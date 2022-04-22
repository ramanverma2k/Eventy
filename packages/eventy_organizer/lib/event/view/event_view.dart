import 'package:eventy_organizer/event/event.dart';
import 'package:eventy_organizer/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  static final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Manage Events",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(fontWeightDelta: 3),
          ),
          const Gap(20),
          TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  border: const OutlineInputBorder(),
                  labelText: "Search",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchPage(
                            key: Key('search_${_searchController.text.trim()}'),
                            query: _searchController.text.trim(),
                          ),
                        ),
                      );
                    },
                    child: const Icon(Icons.search),
                  )),
              onFieldSubmitted: (query) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(
                      key: Key('search_$query'),
                      query: query,
                    ),
                  ),
                );
              }),
          const Gap(20),
          BlocBuilder<EventBloc, EventState>(
            builder: (context, state) {
              if (state is EventDeleted) {
                context.read<EventBloc>().add(
                      FetchMyEvents(),
                    );
              }

              if (state is EventFetched) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.myEvents.events.length,
                    itemBuilder: (context, index) => Stack(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  state.myEvents.events[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const SizedBox(
                            height: 200,
                            width: double.maxFinite,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 15,
                          child: GestureDetector(
                            onTap: () async {
                              print(
                                  "deleting ${state.myEvents.events[index].id}");
                              context.read<EventBloc>().add(
                                    EventDelete(
                                        id: state.myEvents.events[index].id),
                                  );
                            },
                            child: const CircleAvatar(
                              maxRadius: 20,
                              child: Icon(
                                Icons.delete,
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Gap(20),
                  ),
                );
              }
              if (state is EventFailed) {
                return const Center(child: Text("Error fetching your events"));
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
