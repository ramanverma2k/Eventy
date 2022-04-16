import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ColoredBox(
                    color: Colors.red,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.maxFinite,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Birthday Party",
                      style: Theme.of(context).textTheme.headlineMedium?.apply(
                            fontWeightDelta: 2,
                            color: Colors.black,
                          ),
                    ),
                    const Gap(25),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(10),
                        Text(
                          "Sunday, 27 December 2022",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(10),
                        Text(
                          "9:00 pm - 12:00 am",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(10),
                        Text(
                          "Devil St. London",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Row(
                      children: [
                        Stack(
                          children: const [
                            CircleAvatar(),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: CircleAvatar(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60.0),
                              child: CircleAvatar(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 90.0),
                              child: CircleAvatar(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 120.0),
                              child: CircleAvatar(),
                            ),
                          ],
                        ),
                        const Gap(20),
                        const Text("+56 going")
                      ],
                    ),
                    const Gap(30),
                    Text(
                      "About this event",
                      style: Theme.of(context).textTheme.headlineSmall?.apply(
                            fontWeightDelta: 2,
                            color: Colors.black,
                          ),
                    ),
                    const Gap(10),
                    const Text(
                      "The Jazz Cafe are delighted to bring your Maiden Voyage retiring"
                      " for the seconds year, intimate Jazz & Hip Hop Music Festival.",
                    ),
                    const Gap(30),
                    Text(
                      "Organized By",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.apply(fontWeightDelta: 2, color: Colors.black),
                    ),
                    const Gap(10),
                    const Text("Kashmiri Pandits Cultural"),
                    const Gap(30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Participate'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
