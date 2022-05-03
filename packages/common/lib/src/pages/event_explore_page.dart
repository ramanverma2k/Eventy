import 'package:common/common.dart';
import 'package:flutter/material.dart';

/// The event explore page.
class EventExplorePage extends StatelessWidget {
  /// Creates a new event explore page.
  const EventExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Events'),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(35),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade300,
              ),
              width: kDeviceDimensions.width * 0.7,
              child: Center(
                child: TabBar(
                  isScrollable: true,
                  labelPadding: const EdgeInsets.all(5),
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.greenAccent,
                  ),
                  padding: const EdgeInsets.all(5),
                  tabs: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Upcoming'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Past Events'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Upcoming'),
            ),
            Center(
              child: Text('Past Events'),
            ),
          ],
        ),
      ),
    );
  }
}
