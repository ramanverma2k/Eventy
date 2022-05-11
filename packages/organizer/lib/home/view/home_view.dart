import 'package:eventy_organizer/create_event/create_event.dart';
import 'package:eventy_organizer/home/home.dart';
import 'package:eventy_organizer/profile/profile.dart';
import 'package:eventy_organizer/widgets/horizontal_list.dart';
import 'package:eventy_organizer/widgets/vertical_list.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static final _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const ListEvents(
        events: <dynamic>[],
        title: 'Subscribed Events',
      ),
      const CreateEventView(),
      const ListEvents(
        events: <dynamic>[],
        title: 'Saved Events',
      ),
      const ProfileView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.subscriptions_outlined),
        title: 'Subscribed Events',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add),
        title: 'Create Event',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bookmark),
        title: 'Saved Events',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'Profile',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  final List<String> _filterList = [
    'Food & Drinks',
    'Free',
    'Music',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                key: const Key('topbar-row'),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    key: const Key('topbar-location-row'),
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const Gap(10),
                      Text(
                        'San Francisco',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  Row(
                    key: const Key('topbar-other-row'),
                    children: const [
                      Icon(Icons.notifications_outlined),
                      Gap(10),
                      Icon(Icons.settings)
                    ],
                  )
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        contentPadding: const EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Search for music, events, or venues',
                        labelStyle: Theme.of(context).textTheme.bodyText2,
                        prefixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.search),
                        ),
                      ),
                      onFieldSubmitted: (query) {},
                    ),
                  ),
                  IconButton(
                    onPressed: () => showMaterialModalBottomSheet<Widget>(
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        controller: ModalScrollController.of(context),
                        child: const BottomModalSheet(),
                      ),
                    ),
                    icon: const Icon(Icons.sort_outlined),
                  ),
                ],
              ),
              const Gap(10),
              Text(
                'Discover',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: const [
                    Expanded(
                      child: DiscoverList(),
                    ),
                  ],
                ),
              ),
              Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(5),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: const [
                    Expanded(
                      child: HorizontalList(),
                    ),
                  ],
                ),
              ),
              Text(
                'Near You',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(10),
              const VerticalList(),
            ],
          ),
        ),
      ),
    );
  }
}
