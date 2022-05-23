import 'package:eventy_consumer/authentication/authentication.dart';
import 'package:eventy_consumer/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state.state == AuthenticationStatus.authenticated) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  state.user!.image!.isEmpty
                                      ? 'https://images.unsplash.com/photo-1652614347757-833f9dea4fa7?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580'
                                      : state.user!.image!,
                                ),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text(
                          '${state.user!.first_name} ${state.user!.last_name}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          state.user!.email,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const Gap(20),
                        ListTile(
                          onTap: () {
                            context.read<ThemeBloc>().add(ThemeToggle());
                          },
                          leading: const Icon(Icons.settings),
                          horizontalTitleGap: 0,
                          title: Text(
                            'Dark Theme',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        ListTile(
                          leading: const Icon(Icons.logout_outlined),
                          onTap: () {
                            context.read<AuthenticationBloc>().add(
                                  AuthenticationLogoutRequested(),
                                );
                          },
                          horizontalTitleGap: 0,
                          title: Text(
                            'Log out',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
