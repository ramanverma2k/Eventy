import 'package:eventy_organizer/events/events.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@immutable
class ListEvents extends StatelessWidget {
  const ListEvents({
    Key? key,
    required this.events,
    required this.title,
  }) : super(key: key);

  final List<dynamic> events;

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
              child: ListView.separated(
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () => Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EventsView(eventData: events[index]),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Event name',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const Gap(10),
                            Text(
                              'Event date',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Gap(10),
                            Text(
                              'Event location',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (_, index) => const Gap(20),
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
