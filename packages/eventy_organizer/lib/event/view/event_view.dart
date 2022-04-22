import 'package:eventy_organizer/event/event.dart';
import 'package:eventy_organizer/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();

    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
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
                                key: Key(
                                    'search_${_searchController.text.trim()}'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Total events created (5)'),
                  Text('Ongoing events (5)'),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Scheduled events (5)'),
                  Text('Subscribed events (5)'),
                ],
              ),
              const Gap(20),
              Text(
                "My Events",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.apply(fontWeightDelta: 3),
              ),
              const Gap(20),
              Expanded(
                child: ListView.separated(
                  itemCount: 0,
                  itemBuilder: (context, index) => Stack(
                    children: const [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(''),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SizedBox(
                          height: 200,
                          width: double.maxFinite,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 60,
                        child: CircleAvatar(
                          maxRadius: 15,
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 15,
                        child: CircleAvatar(
                          maxRadius: 15,
                          child: Icon(
                            Icons.delete,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Gap(20),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
