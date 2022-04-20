import 'package:eventy_organizer/models/event_model.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget(
      {required Key key,
      required this.title,
      required this.page,
      required this.data})
      : super(key: key);

  final String title;
  final String page;
  final List<EventElement> data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6?.apply(
                fontWeightDelta: 3,
                fontSizeFactor: 0.9,
              ),
        ),
        TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewAllPage(
                key: Key("viewAll_$page"),
                title: page,
                data: data,
              ),
            ),
          ),
          child: const Text("View All"),
        )
      ],
    );
  }
}
