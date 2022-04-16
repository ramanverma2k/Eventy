import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModalBottomSheetEventPage extends StatelessWidget {
  const ModalBottomSheetEventPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Created By",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.apply(fontWeightDelta: 1),
                    ),
                    const Text("Kashmiri Pandits Cultural"),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventDetailsPage(
                        key: Key('event_details_page'),
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.fullscreen_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
            const Expanded(
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Text(
              "Maiden Voyager Festival 2020",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.apply(fontWeightDelta: 1),
            ),
            const Gap(20),
            IntrinsicHeight(
              child: Row(
                children: [
                  const Icon(
                    Icons.date_range_outlined,
                    size: 30,
                  ),
                  const Gap(10),
                  const VerticalDivider(
                    color: Colors.grey,
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sun, 20 August, 2020",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.apply(fontWeightDelta: 1),
                      ),
                      const Gap(5),
                      const Text("12pm To 10pm"),
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            IntrinsicHeight(
              child: Row(
                children: [
                  const Icon(
                    Icons.map_outlined,
                    size: 30,
                  ),
                  const Gap(10),
                  const VerticalDivider(
                    color: Colors.grey,
                  ),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Directions",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.apply(fontWeightDelta: 1),
                      ),
                      const Gap(5),
                      const Text("Three Mills Island, London, UK"),
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            Text(
              "Event Details",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.apply(fontWeightDelta: 1),
            ),
            const Gap(20),
            const Text(
              "The Jazz Cafe are delighted to bring your Maiden Voyage retiring"
              " for the seconds year, intimate Jazz & Hip Hop Music Festival.",
            ),
            const Gap(20),
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
    );
  }
}
