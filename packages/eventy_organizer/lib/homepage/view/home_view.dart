import 'package:eventy_organizer/event/event.dart';
import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          child: _selectedIndex == 1
              ? const EventPage()
              : _selectedIndex == 2
                  ? const ProfilePage(key: Key('profilePage'))
                  : Column(
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
                            const PopupMenuWidget(),
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
                        BlocBuilder<HomepageBloc, HomepageState>(
                          builder: (context, state) {
                            if (state is HomepageDataFetched) {
                              return Column(
                                children: [
                                  ViewAllWidget(
                                    key: const Key("viewAll_myEvent"),
                                    title: "My events",
                                    page: "My Events",
                                    data: state.myEvents,
                                  ),
                                  const Gap(10),
                                  HomepageEventList(
                                    key: const Key('myEvents_list'),
                                    eventData: state.myEvents,
                                  ),
                                  const Gap(20),
                                  ViewAllWidget(
                                    key: const Key("viewAll_popularEvent"),
                                    title: "Popular events",
                                    page: "Popular Events",
                                    data: state.popularEvents,
                                  ),
                                  const Gap(10),
                                  HomepageEventList(
                                    key: const Key('popular_events_list'),
                                    eventData: state.popularEvents,
                                  ),
                                  const Gap(20),
                                  ViewAllWidget(
                                    key: const Key("viewAll_ongoingEvent"),
                                    title: "Ongoing events",
                                    page: "Ongoing Events",
                                    data: state.ongoingEvents,
                                  ),
                                  const Gap(10),
                                  HomepageEventList(
                                    key: const Key('ongoing_events_list'),
                                    eventData: state.ongoingEvents,
                                  ),
                                  const Gap(20),
                                  ViewAllWidget(
                                    key: const Key("viewAll_upcomingEvent"),
                                    title: "Upcoming events",
                                    page: "Upcoming Events",
                                    data: state.upcomingEvents,
                                  ),
                                  const Gap(10),
                                  HomepageEventList(
                                    key: const Key('upcoming_events_list'),
                                    eventData: state.upcomingEvents,
                                  ),
                                ],
                              );
                            }

                            if (state is HomepageDataFailed) {
                              return const Center(
                                child: Text(
                                    "Error fetching data, Please try again later."),
                              );
                            }

                            return Column(
                              children: [
                                Gap(MediaQuery.of(context).size.height * 0.2),
                                const Gap(20),
                                const Center(child: CircularProgressIndicator())
                              ],
                            );
                          },
                        )
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
