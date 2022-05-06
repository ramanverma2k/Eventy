import 'package:common/common.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  static final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: kDeviceDimensions.height * 0.18,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.menu),
                          Text('New York, USA'),
                          Icon(Icons.notifications),
                        ],
                      ),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            const SizedBox(
                              height: 25,
                              child: VerticalDivider(
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _searchController,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Icon(Icons.sort),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            _HomePageTimelineWidget(
              title: 'Upcoming Events',
              callback: () {},
              data: '',
            ),
            _HomePageTimelineWidget(
              title: 'Nearby You',
              callback: () {},
              data: '',
            ),
          ],
        ),
      ),
    );
  }
}

class _HomePageTimelineWidget extends StatelessWidget {
  /// Creates a widget that displays Title with TextButton for navigation and
  /// a VerticalCard inside a Column widget.
  const _HomePageTimelineWidget({
    Key? key,
    required this.callback,
    required this.data,
    required this.title,
  }) : super(key: key);

  final String title;
  final VoidCallback? callback;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: kDefaultPaddingAll,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6!.apply(
                      fontWeightDelta: 1,
                    ),
              ),
              TextButton(
                onPressed: callback,
                child: const Text('See all >'),
              ),
            ],
          ),
        ),
        Padding(
          padding: kDefaultPaddingAll.copyWith(
            top: 0,
            bottom: 0,
            left: 20,
            right: 0,
          ),
          child: SizedBox(
            height: kDeviceDimensions.height * 0.45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
                  const VerticalCard(),
            ),
          ),
        ),
      ],
    );
  }
}
