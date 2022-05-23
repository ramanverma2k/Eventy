import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({Key? key, required this.filters}) : super(key: key);

  final List<String> filters;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                controller: ModalScrollController.of(context),
                itemBuilder: (context, index) => CheckboxListTile(
                  title: Text(
                    filterList[index],
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  value: widget.filters.contains(filterList[index]),
                  onChanged: (bool? newValue) {
                    setState(() {
                      widget.filters.contains(filterList[index])
                          ? widget.filters.remove(filterList[index])
                          : widget.filters.add(filterList[index]);
                    });
                  },
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: filterList.length,
                shrinkWrap: true,
              )
            ],
          ),
        ],
      ),
    );
  }
}
