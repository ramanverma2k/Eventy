import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({Key? key}) : super(key: key);

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
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
            CheckboxListTile(
              title: Text(
                'Food & Drinks',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              value: _isSelected['Food & Drinks'] ?? false,
              onChanged: (bool? newValue) {
                setState(() {
                  _isSelected['Food & Drinks'] = newValue!;
                });
              },
            ),
            const Divider(),
            CheckboxListTile(
              title: Text(
                'Free',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              value: _isSelected['Free'] ?? false,
              onChanged: (bool? newValue) {
                setState(() {
                  _isSelected['Free'] = newValue!;
                });
              },
            ),
            const Divider(),
            CheckboxListTile(
              title: Text(
                'Music',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              value: _isSelected['Music'] ?? false,
              onChanged: (bool? newValue) {
                setState(() {
                  _isSelected['Music'] = newValue!;
                });
              },
            ),
            const Divider(),
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
