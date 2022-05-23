import 'package:eventy_organizer/events/events.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

@immutable
class ListEvents extends StatelessWidget {
  const ListEvents({
    Key? key,
    required this.events,
    required this.title,
  }) : super(key: key);

  final List<dynamic>? events;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: title == 'Saved Events'
            ? [
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem<String>(
                      value: 'clear',
                      child: Text(
                        'Clear All',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )
                  ],
                  onSelected: (value) {
                    if (value == 'clear') {}
                  },
                ),
              ]
            : [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: events!.isNotEmpty
                  ? ListView.separated(
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EventsView(eventData: events![index]),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    events![index].image.toString(),
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
                                    events![index].name.toString(),
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  const Gap(10),
                                  Text(
                                    '${DateFormat('dd MMM, y').format(DateTime.parse(events![index].start_date.toString()))}'
                                    ' ${DateFormat('jm').format(DateTime.parse(events![index].start_date.toString()))}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const Gap(10),
                                  Text(
                                    events![index]
                                        .location['address']
                                        .toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (_, index) => const Gap(20),
                      itemCount: events!.length,
                    )
                  : const Center(
                      child: Text('There are no events to show'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
