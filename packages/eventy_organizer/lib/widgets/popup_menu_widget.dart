import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:eventy_organizer/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      onSelected: (String result) async {
        switch (result) {
          case 'settings':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
            break;

          case 'logout':
            final prefs = await SharedPreferences.getInstance();

            GetIt.I.unregister<User>(instanceName: 'user');
            await prefs.remove('user');

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'settings',
          child: Text('Settings'),
        ),
        const PopupMenuItem<String>(
          value: 'logout',
          child: Text('Logout'),
        ),
      ],
    );
  }
}
