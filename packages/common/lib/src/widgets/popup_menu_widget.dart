import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// PopupMenuWidget that stays on HomeScreen AppBar.
/// This widget provides quick access to Settings page and allows user to
/// Logout from the application.
class PopupMenuWidget extends StatelessWidget {
  /// Constructs PopupMenuWidget
  const PopupMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.menu),
      onSelected: (String result) async {
        switch (result) {
          case 'settings':
            break;

          case 'logout':
            context.read<AuthenticationBloc>().add(
                  AuthenticationLogoutRequested(),
                );
            break;
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
