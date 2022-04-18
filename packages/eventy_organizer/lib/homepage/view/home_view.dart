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
          padding: const EdgeInsets.all(20.0),
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
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      child: Text('R'),
                    ),
                  ),
                ],
              ),
              const Gap(20),
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
              const Gap(30),
              Text(
                "My events",
                style: Theme.of(context).textTheme.headline6?.apply(
                      fontWeightDelta: 3,
                      fontSizeFactor: 0.9,
                    ),
              ),
              const Gap(20),
              const HomepageEventList(key: Key('My_events_list')),
              const Gap(30),
              Text(
                "Popular events",
                style: Theme.of(context).textTheme.headline6?.apply(
                      fontWeightDelta: 3,
                      fontSizeFactor: 0.9,
                    ),
              ),
              const Gap(20),
              const HomepageEventList(key: Key('popular_events_list')),
              const Gap(30),
              Text(
                "Upcoming events",
                style: Theme.of(context).textTheme.headline6?.apply(
                      fontWeightDelta: 3,
                      fontSizeFactor: 0.9,
                    ),
              ),
              const Gap(20),
              const HomepageEventList(key: Key('upcoming_events_list')),
              const Gap(30),
              Text(
                "Ongoing events",
                style: Theme.of(context).textTheme.headline6?.apply(
                      fontWeightDelta: 3,
                      fontSizeFactor: 0.9,
                    ),
              ),
              const Gap(20),
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
