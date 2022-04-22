import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();
  static final _usernameController = TextEditingController();
  static final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                  validator: (value) {
                    final expression = RegExp(
                        r'''^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$''');

                    if (value == null || value.isEmpty) {
                      return "Username cannot be empty";
                    } else if (value.isNotEmpty &&
                        value.contains('@') &&
                        !expression.hasMatch(value)) {
                      return "Please enter a valid email";
                    } else if (value.length < 5) {
                      return "Please enter a valid username";
                    }

                    return null;
                  },
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
                  validator: (value) {
                    final expression =
                        RegExp(r'''^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$''');

                    if (value == null || value.isEmpty) {
                      return "Password cannot be empty";
                    }

                    if (value.isNotEmpty && !expression.hasMatch(value)) {
                      return "Password must be of 6 characters with at least 1 number";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
              ),
              const Spacer(),
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginInProgress) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Logging you in...")),
                    );
                  }

                  if (state is LoginSuccess) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login Successful")),
                    );

                    context.read<LoginBloc>().add(LoginEventFinished());
                  }

                  if (state is LoginComplete) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }

                  if (state is LoginFailed) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "Login Failed, Make sure your username and password are correct or try again later"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<LoginBloc>().add(
                                LoginEventStarted(
                                  username: _usernameController.text
                                      .trim()
                                      .toString(),
                                  password: _passwordController.text
                                      .trim()
                                      .toString(),
                                ),
                              );
                        }
                      },
                      child: const Text('Login')),
                ),
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
      ),
    );
  }
}
