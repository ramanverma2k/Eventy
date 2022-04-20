import 'package:eventy_organizer/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text("Settings",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(fontWeightDelta: 3)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListTile(
                          onTap: () {},
                          title: const Text("Toggle Dark Mode"),
                          subtitle:
                              const Text("Enable and disable dark mode theme"),
                          trailing: Switch(
                            value: true,
                            onChanged: (bool value) {
                              value = !value;
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          )),
    );
  }
}
