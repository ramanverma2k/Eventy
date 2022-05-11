import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => Row(
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: 5,
      shrinkWrap: true,
    );
  }
}
