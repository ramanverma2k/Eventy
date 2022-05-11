import 'package:eventy_organizer/widgets/vertical_list.dart';
import 'package:flutter/material.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: SafeArea(
            child: Column(
              children: [
                TabBar(
                  labelPadding: const EdgeInsets.all(10),
                  tabs: [
                    Text(
                      'My Events',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Create Event',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: VerticalList(),
            ),
            SizedBox(
              child: Center(
                child: Text('Create Event'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
