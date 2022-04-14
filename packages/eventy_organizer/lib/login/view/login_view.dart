import 'package:eventy_organizer/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<LoginBloc>().add(
                        LoginEventStarted(
                          username: _usernameController.text.trim().toString(),
                          password: _passwordController.text.trim().toString(),
                        ),
                      );
                },
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is LoginInProgress) {
                      return const CircularProgressIndicator();
                    }

                    return const Text('Login');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
