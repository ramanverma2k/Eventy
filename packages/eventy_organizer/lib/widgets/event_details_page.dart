import 'package:eventy_organizer/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({required Key key, required this.details})
      : super(key: key);

  final EventElement details;

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
                  DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(details.bannerImage),
                          fit: BoxFit.cover),
                    ),
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          details.name,
                          style:
                              Theme.of(context).textTheme.headlineMedium?.apply(
                                    fontWeightDelta: 2,
                                    fontSizeFactor: 0.9,
                                    color: Colors.black,
                                  ),
                        ),
                        FittedBox(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(details.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const SizedBox(
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 20,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(10),
                        Text(
                          details.startDate.toString(),
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
                          details.startDate.hour.toString(),
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
                          details.address,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: EdgeInsets.only(left: 150.0),
                              child: CircleAvatar(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180.0),
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
                    Text(details.description),
                    const Gap(30),
                    Text(
                      "Organized By",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.apply(fontWeightDelta: 2, color: Colors.black),
                    ),
                    const Gap(10),
                    Text("${details.user.firstName} ${details.user.lastName}"),
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
