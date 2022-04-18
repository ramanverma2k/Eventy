import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey! Lorem",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.apply(color: Colors.grey.shade600),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert),
                    onSelected: (String result) {},
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'settings',
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'logout',
                        child: Text('Logout'),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(10),
              Text(
                "Find amazing events near you",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.apply(fontWeightDelta: 3, fontSizeFactor: 1.2),
              ),
              const Gap(20),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Search events",
                ),
              ),
              const Gap(20),
              const ViewAllWidget(
                  key: Key("viewAll_myEvent"),
                  title: "My events",
                  page: "My Events"),
              const Gap(10),
              const HomepageEventList(key: Key('My_events_list')),
              const Gap(20),
              const ViewAllWidget(
                  key: Key("viewAll_popularEvent"),
                  title: "Popular events",
                  page: "Popular Events"),
              const Gap(10),
              const HomepageEventList(key: Key('popular_events_list')),
              const Gap(20),
              const ViewAllWidget(
                  key: Key("viewAll_upcomingEvent"),
                  title: "Upcoming events",
                  page: "Upcoming Events"),
              const Gap(10),
              const HomepageEventList(key: Key('upcoming_events_list')),
              const Gap(20),
              const ViewAllWidget(
                  key: Key("viewAll_ongoingEvent"),
                  title: "Ongoing events",
                  page: "Ongoing Events"),
              const Gap(10),
              const HomepageEventList(key: Key('ongoing_events_list')),
            ],
          ),
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
