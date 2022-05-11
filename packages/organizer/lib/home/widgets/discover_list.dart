import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiscoverList extends StatelessWidget {
  const DiscoverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            'Event name',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: 5,
    );
  }
}
