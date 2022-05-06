import 'package:common/common.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  static final _searchController = TextEditingController();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        flexibleSpace: Padding(
          padding: kDefaultPaddingAll.copyWith(top: 0, bottom: 0, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PopupMenuWidget(),
                  const Text(
                    'New York, USA',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    const SizedBox(
                      height: 25,
                      child: VerticalDivider(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: HomePage._searchController,
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sort),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        toolbarHeight: kDeviceDimensions.height * 0.18,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HomePageSuggestionWidget(
              title: 'Upcoming Events',
              callback: () {},
              data: '',
            ),
            _HomePageSuggestionWidget(
              title: 'Nearby You',
              callback: () {},
              data: '',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        unselectedLabelStyle: const TextStyle(color: Colors.blueGrey),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Manage Events",
            icon: Icon(Icons.event_rounded),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class _HomePageSuggestionWidget extends StatelessWidget {
  /// Creates a widget that displays Title with TextButton for navigation and
  /// a VerticalCard inside a Column widget.
  const _HomePageSuggestionWidget({
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
