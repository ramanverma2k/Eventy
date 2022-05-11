import 'package:eventy_organizer/home/home.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style:
              Theme.of(context).textTheme.titleLarge!.apply(fontSizeDelta: -8),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    'David Warner',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'whateverthisis@gmail.com',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            const Gap(20),
            ListTile(
              leading: const Icon(Icons.favorite_outline_outlined),
              horizontalTitleGap: 0,
              title: Text(
                'My favorites',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              horizontalTitleGap: 0,
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              horizontalTitleGap: 0,
              title: Text(
                'Log out',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
