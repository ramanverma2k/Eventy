import 'package:eventy_organizer/events/events.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => GestureDetector(
        onTap: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => const EventsView(),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              'Category name',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: 5,
    );
  }
}
