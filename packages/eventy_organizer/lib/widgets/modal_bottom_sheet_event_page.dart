import 'package:eventy_organizer/models/event_model.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModalBottomSheetEventPage extends StatelessWidget {
  const ModalBottomSheetEventPage({required Key key, required this.data})
      : super(key: key);

  final EventElement data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(data.image),
                ),
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
                    Text("${data.user.firstName} ${data.user.lastName}"),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventDetailsPage(
                        key: const Key('event_details_page'),
                        details: data,
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
            const Gap(20),
            const Divider(
              color: Colors.grey,
            ),
            const Gap(20),
            Text(
              data.name,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.apply(fontWeightDelta: 3, color: Colors.black),
            ),
            const Gap(20),
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data.bannerImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width,
              ),
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
                        data.startDate.toString(),
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
                      Text(data.address),
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
            Text(data.description),
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
