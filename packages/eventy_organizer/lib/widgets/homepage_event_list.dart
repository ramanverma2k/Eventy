import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomepageEventList extends StatelessWidget {
  const HomepageEventList({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EventDetailsPage(
                      key: Key('event_details_page'),
                    ),
                  ),
                ),
                onLongPress: () => showBarModalBottomSheet(
                  context: context,
                  builder: (context) => const ModalBottomSheetEventPage(
                    key: Key('event_bottom_modal_sheet'),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                ),
                child: ColoredBox(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Christmas Party",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Gap(5),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 15,
                              color: Colors.grey.shade600,
                            ),
                            const Gap(5),
                            Text(
                              "Devil St. London",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.apply(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 15,
                              color: Colors.grey.shade600,
                            ),
                            const Gap(5),
                            Text(
                              "27 Dec, 4pm",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.apply(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  maxRadius: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.0),
                                  child: CircleAvatar(
                                    maxRadius: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 50.0),
                                  child: CircleAvatar(
                                    maxRadius: 15,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 75.0),
                                  child: CircleAvatar(
                                    maxRadius: 15,
                                  ),
                                ),
                              ],
                            ),
                            const Text("+46 going")
                          ],
                        ),
                        const Gap(10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
