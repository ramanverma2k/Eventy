import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _firstNameController = TextEditingController();
    final _lastNameController = TextEditingController();
    final _usernameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _contactNoController = TextEditingController();
    final _descriptionController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Create an Account",
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _contactNoController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Contact Number",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  labelText: "Tell us a little bit about yourself",
                ),
              ),
            ),
            const Spacer(),
            BlocBuilder<SignupBloc, SignupState>(
              builder: (context, state) {
                if (state is SignupInProgress) {
                  return const CircularProgressIndicator();
                }

                if (state is SignupSuccess) {
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
                        context.read<SignupBloc>().add(
                              SignupEventStarted(
                                  username: _usernameController.text
                                      .trim()
                                      .toString(),
                                  password: _passwordController.text
                                      .trim()
                                      .toString(),
                                  first_name: _firstNameController.text
                                      .trim()
                                      .toString(),
                                  last_name: _lastNameController.text
                                      .trim()
                                      .toString(),
                                  email:
                                      _emailController.text.trim().toString(),
                                  contact_no: _contactNoController.text
                                      .trim()
                                      .toString(),
                                  description: _descriptionController.text
                                      .trim()
                                      .toString()),
                            );
                      },
                      child: const Text('Create Account')),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?  "),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  child: Text(
                    "Sign in",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.apply(fontWeightDelta: 3),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
