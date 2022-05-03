import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

///
class EventPage extends StatelessWidget {
  ///
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverLayoutBuilder(
                builder: (context, constraints) {
                  final _scrolled = constraints.scrollOffset > 520;

                  return SliverSafeArea(
                    sliver: SliverAppBar(
                      floating: true,
                      pinned: true,
                      snap: true,
                      backgroundColor: Colors.transparent,
                      title: const Text('Event Details'),
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context),
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.bookmark),
                          onPressed: () {},
                        ),
                      ],
                      expandedHeight: kDeviceDimensions.height,
                      collapsedHeight: kDeviceDimensions.height * 0.2,
                      flexibleSpace: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        reverseDuration: const Duration(milliseconds: 300),
                        switchInCurve: Curves.easeIn,
                        switchOutCurve: Curves.easeOut,
                        child: _scrolled
                            ? const CollapsedSliverAppBar()
                            : const ExpandedSliverAppBar(),
                      ),
                    ),
                  );
                },
              ),
            )
          ];
        },
        body: Builder(builder: (context) {
          return SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'International Band Music Concert',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(25),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue.withOpacity(0.25),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '14 December, 2021',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Tuesday, 4:00 PM - 6:00 PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Gap(25),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue.withOpacity(0.25),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Gala Convention Center',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '36 Guild Street, London, UK',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Gap(25),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue.withOpacity(0.25),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Ashley Pheonix',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Organizer',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Gap(25),
                        const Text(
                          'About Event',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(10),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const Gap(10),
                        Center(
                          child: SizedBox(
                            height: kDeviceDimensions.height * 0.06,
                            width: kDeviceDimensions.width * 0.5,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Attend',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

///
class ExpandedSliverAppBar extends StatelessWidget {
  ///
  const ExpandedSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Stack(
        fit: StackFit.expand,
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1650399470902-0dd9259b91c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=392&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '19 June, 2022',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'International Band Music Concert',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Gap(5),
                    Text(
                      '36 Guild Street London, UK',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const Gap(10),
                const Text(
                  'Attending',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(10),
                Wrap(
                  spacing: 5,
                  children: const [
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(
                      child: Text(
                        '+20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Center(
                  child: SizedBox(
                    height: kDeviceDimensions.height * 0.06,
                    width: kDeviceDimensions.width * 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Attend',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

///
class CollapsedSliverAppBar extends StatelessWidget {
  ///
  const CollapsedSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1650532596364-37b8a537f3f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=828&q=80'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
