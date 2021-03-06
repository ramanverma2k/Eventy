import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  static final _firstNameController = TextEditingController();
  static final _lastNameController = TextEditingController();
  static final _usernameController = TextEditingController();
  static final _emailController = TextEditingController();
  static final _passwordController = TextEditingController();
  static final _contactNoController = TextEditingController();
  static final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                  validator: (value) {
                    if (value == null && value!.length < 5) {
                      return "Username cannot be less than 5 letters";
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
                      return "Password must be a combination of 6 characters with at least 1 number";
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: _firstNameController,
                  validator: (value) {
                    final expression = RegExp(r'''^[a-zA-Z]{3,}$''');

                    if (value == null || value.isEmpty) {
                      return "First name cannot be empty and must be greater than 2 letters";
                    } else if (value.length < 3) {
                      return "First name must be greater than 2 letters";
                    } else if (!expression.hasMatch(value)) {
                      return "Make sure your name doesn't contain any numbers";
                    }

                    return null;
                  },
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
                  validator: (value) {
                    final expression = RegExp(
                        r'''^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$''');

                    if (value == null || value.isEmpty) {
                      return "Email cannot be empty";
                    } else if (value.isNotEmpty &&
                        !expression.hasMatch(value)) {
                      return "Please enter a valid email.";
                    }

                    return null;
                  },
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
                  validator: (value) {
                    final expression = RegExp(r'''^[0-9]{10,}$''');
                    if (value == null || value.isEmpty) {
                      return "Contact number cannot be empty";
                    } else if (value.isNotEmpty &&
                        !expression.hasMatch(value)) {
                      return "Please enter a valid 10 digit contact number";
                    }

                    return null;
                  },
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
              BlocListener<SignupBloc, SignupState>(
                listener: (context, state) {
                  if (state is SignupInProgress) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Creating your account...")),
                    );
                  }

                  if (state is SignupSuccess) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Login Successful")),
                    );

                    context.read<SignupBloc>().add(SignupEventFinished());
                  }

                  if (state is SignupComplete) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }

                  if (state is SignupFailed) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Signup Failed, please try again later"),
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
                        }
                      },
                      child: const Text('Create Account')),
                ),
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
      ),
    );
  }
}
