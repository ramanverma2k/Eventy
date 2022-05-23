import 'package:eventy_organizer/events/events.dart';
import 'package:eventy_organizer/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.state == SearchStatus.completed &&
            state.searchResult != null) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Search results',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () => Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EventsView(eventData: state.searchResult![index]),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              image: DecorationImage(
                                image: NetworkImage(
                                  state.searchResult![index].image!,
                                ),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.searchResult![index].name,
                                  style: Theme.of(context).textTheme.titleSmall,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Gap(10),
                                Text(
                                  '${DateFormat('dd MMM, y').format(
                                    state.searchResult![index].start_date,
                                  )}'
                                  ' ${DateFormat('jm').format(
                                    state.searchResult![index].start_date,
                                  )}',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Gap(10),
                                Text(
                                  state
                                      .searchResult![index].location!['address']
                                      .toString(),
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (_, index) => const Gap(20),
                  itemCount: state.searchResult!.length,
                  shrinkWrap: true,
                ),
              ),
            ),
          );
        }

        if (state.state == SearchStatus.completed &&
            state.searchResultsWithFilters != null) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Search results',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () => Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventsView(
                          eventData: state.searchResultsWithFilters![index],
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            image: DecorationImage(
                              image: NetworkImage(
                                state.searchResultsWithFilters![index].image!,
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.searchResultsWithFilters![index].name,
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Gap(10),
                              Text(
                                '${DateFormat('dd MMM, y').format(
                                  state.searchResultsWithFilters![index]
                                      .start_date,
                                )}'
                                ' ${DateFormat('jm').format(
                                  state.searchResultsWithFilters![index]
                                      .start_date,
                                )}',
                                style: Theme.of(context).textTheme.displaySmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Gap(10),
                              Text(
                                state.searchResultsWithFilters![index]
                                    .location!['address']
                                    .toString(),
                                style: Theme.of(context).textTheme.displaySmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (_, index) => const Gap(20),
                  itemCount: state.searchResultsWithFilters!.length,
                  shrinkWrap: true,
                ),
              ),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
