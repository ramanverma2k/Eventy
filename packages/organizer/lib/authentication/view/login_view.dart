import 'package:eventy_organizer/authentication/authentication.dart';
import 'package:eventy_organizer/authentication/view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginView());
  }

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isEnabled = true;
  bool isLoading = false;
  bool isError = false;

  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state.state == AuthenticationStatus.loggingIn) {
                  setState(() {
                    isEnabled = false;
                    isLoading = true;
                  });
                }

                if (state.state == AuthenticationStatus.authenticated) {
                  setState(() {
                    isEnabled = true;
                    isLoading = false;
                    isError = false;
                  });
                }

                if (state.state == AuthenticationStatus.error) {
                  setState(() {
                    isEnabled = true;
                    isLoading = false;
                    isError = true;
                  });
                }
              },
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/signup.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Welcome',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.apply(fontWeightDelta: 3),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      enabled: isEnabled,
                      controller: _usernameController,
                      validator: (value) {
                        final expression = RegExp(
                          r'''^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$''',
                        );

                        if (value == null || value.isEmpty) {
                          return 'Username cannot be empty';
                        } else if (value.isNotEmpty &&
                            value.contains('@') &&
                            !expression.hasMatch(value)) {
                          return 'Please enter a valid email';
                        } else if (value.length < 5) {
                          return 'Please enter a valid username';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      enabled: isEnabled,
                      controller: _passwordController,
                      validator: (value) {
                        final expression = RegExp(
                          r'''^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$''',
                        );

                        if (value == null || value.isEmpty) {
                          return 'Password cannot be empty';
                        }

                        if (value.isNotEmpty && !expression.hasMatch(value)) {
                          return '''Password must be of 6 characters with at least 1 number''';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const Gap(20),
                  if (isError)
                    const Text(
                      'Error while logging in please check username and password',
                      style: TextStyle(color: Colors.red),
                    )
                  else
                    const SizedBox.shrink(),
                  const Gap(20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: isLoading
                        ? const Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationSignIn(
                                        username:
                                            _usernameController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      ),
                                    );
                              }
                            },
                            child: const Text('Login'),
                          ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?  "),
                      GestureDetector(
                        onTap: () => isLoading
                            ? null
                            : Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (context) => const SignupView(),
                                ),
                              ),
                        child: Text(
                          'Sign up',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.apply(fontWeightDelta: 3),
                        ),
                      )
                    ],
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
