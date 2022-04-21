import 'package:eventy_organizer/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = GetIt.I.get<User>(instanceName: 'user');

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Profile',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(fontWeightDelta: 3),
          ),
          const SizedBox(
            height: 250,
            width: 200,
            child: CircleAvatar(),
          ),
          Text(
            "${user.firstName} ${user.lastName}",
            style: Theme.of(context).textTheme.headline4!.apply(
                  fontWeightDelta: 2,
                  color: Colors.black,
                ),
          ),
          const Gap(20),
          Text(
            user.description,
            style: Theme.of(context).textTheme.bodyText1!.apply(
                  fontSizeDelta: 1,
                  color: Colors.black,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Username'),
              Text(user.username),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Email'),
              Text(user.email),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Contact'),
              Text(user.contactNo.toString()),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
