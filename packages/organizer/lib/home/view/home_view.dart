import 'package:eventy_organizer/authentication/authentication.dart';
import 'package:eventy_organizer/create_event/create_event.dart';
import 'package:eventy_organizer/home/home.dart';
import 'package:eventy_organizer/profile/profile.dart';
import 'package:eventy_organizer/widgets/horizontal_list.dart';
import 'package:eventy_organizer/widgets/vertical_list.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeView());
  }

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.state == HomeStatus.initial) {
            context.read<HomeBloc>().add(HomeDataFetched());
          }

          if (state.state == HomeStatus.loaded) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      key: const Key('topbar-row'),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          key: const Key('topbar-other-row'),
                          children: [
                            GestureDetector(
                              onTap: () => context
                                  .read<AuthenticationBloc>()
                                  .add(AuthenticationLogoutRequested()),
                              child: const Icon(Icons.logout),
                            )
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
                              labelText: 'Search for music, events, sports',
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
                            enableDrag: true,
                            context: context,
                            builder: (context) => const SingleChildScrollView(
                              child: BottomModalSheet(),
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
                        children: [
                          Expanded(
                            child: DiscoverList(data: state.popularEvents!),
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
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        children: const [
                          Expanded(
                            child: CategoriesList(),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Text(
                      'Upcoming Events',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Gap(20),
                    VerticalList(data: state.upcomingEvents!),
                  ],
                ),
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
