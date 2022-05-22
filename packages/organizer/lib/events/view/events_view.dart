import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class EventsView extends StatelessWidget {
  const EventsView({Key? key, required this.eventData}) : super(key: key);

  final dynamic eventData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          splashRadius: 25,
        ),
        leadingWidth: 38,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline_outlined),
            splashRadius: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            splashRadius: 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  image: DecorationImage(
                    image: NetworkImage(eventData.image.toString()),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const Gap(10),
              Text(
                eventData.name.toString(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Gap(10),
              Row(
                children: [
                  const Icon(Icons.sort),
                  const Gap(10),
                  Text(
                    eventData.event_type.name.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Gap(20),
                  const Icon(Icons.person_outline),
                  const Gap(10),
                  Text(
                    eventData.attendings_aggregate.aggregate.count.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              const Gap(10),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.calendar_month),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              DateFormat('dd MMMM, y').format(
                                DateTime.parse(
                                  eventData.start_date.toString(),
                                ),
                              ),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Gap(5),
                            Text(
                              '-',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Gap(5),
                            Text(
                              DateFormat('dd MMMM, y').format(
                                DateTime.parse(
                                  eventData.end_date.toString(),
                                ),
                              ),
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              DateFormat('jm').format(
                                DateTime.parse(
                                  eventData.start_date.toString(),
                                ),
                              ),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Gap(5),
                            Text(
                              '-',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Gap(5),
                            Text(
                              DateFormat('jm').format(
                                DateTime.parse(
                                  eventData.end_date.toString(),
                                ),
                              ),
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.map_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      eventData.location['address'].toString(),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  )
                ],
              ),
              const Divider(),
              const Gap(10),
              Text(
                'Description',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Gap(10),
              Text(
                eventData.description.toString(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
