import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(
      builder: (GraphQLClient client) {
        return BlocProvider(
          create: (_) => SignupBloc(client: client),
          child: BlocBuilder<SignupBloc, SignupState>(
            builder: (context, state) {
              if (state is SignupSuccess) {
                return const HomePage();
              }
              return const SignupView();
            },
          ),
        );
      },
    );
  }
}
