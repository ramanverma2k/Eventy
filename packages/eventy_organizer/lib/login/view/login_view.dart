import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/signup.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Welcome",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.apply(fontWeightDelta: 3),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            const Spacer(),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                if (state is LoginInProgress) {
                  return const CircularProgressIndicator();
                }

                if (state is LoginSuccess) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }

                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {
                        context.read<LoginBloc>().add(
                              LoginEventStarted(
                                username:
                                    _usernameController.text.trim().toString(),
                                password:
                                    _passwordController.text.trim().toString(),
                              ),
                            );
                      },
                      child: const Text('Login')),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?  "),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.apply(fontWeightDelta: 3),
                  ),
                )
              ],
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
