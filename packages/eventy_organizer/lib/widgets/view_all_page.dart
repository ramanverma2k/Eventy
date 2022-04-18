import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          title,
          style:
              Theme.of(context).textTheme.titleLarge!.apply(fontWeightDelta: 3),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => ColoredBox(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Christmas Party",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Gap(5),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(5),
                        Text(
                          "Devil St. London",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        const Gap(5),
                        Text(
                          "27 Dec, 4pm",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.apply(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: const [
                            CircleAvatar(
                              maxRadius: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: CircleAvatar(
                                maxRadius: 15,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: CircleAvatar(
                                maxRadius: 15,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 75.0),
                              child: CircleAvatar(
                                maxRadius: 15,
                              ),
                            ),
                          ],
                        ),
                        const Text("+46 going")
                      ],
                    ),
                    const Gap(10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
