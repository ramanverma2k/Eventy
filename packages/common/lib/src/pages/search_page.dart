import 'package:common/common.dart';
import 'package:flutter/material.dart';

/// This is the search page.
class SearchPage extends StatelessWidget {
  /// This is the contructor.
  const SearchPage({Key? key}) : super(key: key);

  /// Build a route for navigation.
  static Route route() => MaterialPageRoute<void>(
        builder: (context) => const SearchPage(),
      );

  static final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      children: const [
                        Icon(Icons.arrow_back),
                        kDefaultGap,
                        Text('Search'),
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
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  const HorizontalCard(),
            ),
          )
        ],
      ),
    );
  }
}
