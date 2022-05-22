import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({Key? key}) : super(key: key);

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  final filterList = [
    'Industrial Engineering',
    'Automobile - Automotive Industry',
    'Home & Lifestyle',
    'Building & Construction',
    'Science & Tech',
    'Medical & Pharma',
    'Food & Drink',
    'Apparel & Clothing',
    'Electric & Electronics',
    'Building & Construction',
    'Business',
    'Community',
    'Power & Energy',
    'Fashion',
    'Others',
  ];
  final _isSelected = <String, bool>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Filters',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Gap(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Select a category for a more precise search',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        const Gap(10),
        Column(
          children: [
            ListView.separated(
              itemBuilder: (context, index) => CheckboxListTile(
                title: Text(
                  filterList[index],
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                value: _isSelected[filterList[index]] ?? false,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isSelected[filterList[index]] = newValue!;
                  });
                },
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 3,
              shrinkWrap: true,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox.fromSize(
            size: const Size.fromHeight(50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Apply Filter'),
            ),
          ),
        )
      ],
    );
  }
}
