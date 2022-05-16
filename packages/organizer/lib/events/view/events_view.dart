import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventsView extends StatelessWidget {
  const EventsView({Key? key}) : super(key: key);

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
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const Gap(10),
              Text(
                'Band Music Concert',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Gap(10),
              Row(
                children: [
                  const Icon(Icons.sort),
                  const Gap(10),
                  Text(
                    'Music, Concert',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Gap(20),
                  const Icon(Icons.person_outline),
                  const Gap(10),
                  Text(
                    '2500 visitors',
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
                        Text(
                          '07 October 2022',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          '18:00 - 20:00',
                          style: Theme.of(context).textTheme.displaySmall,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olympic Stadium',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          'Kyiv',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
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
                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
