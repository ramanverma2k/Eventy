import 'dart:io';

import 'package:eventy_organizer/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  File? image;
  bool isEnabled = true;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _contactNoController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                if (state.state == AuthenticationStatus.signingUp) {
                  setState(() {
                    isEnabled = false;
                    isLoading = true;
                  });
                }

                if (state.state == AuthenticationStatus.authenticated) {
                  setState(() {
                    isEnabled = true;
                    isLoading = false;
                  });
                }

                if (state.state == AuthenticationStatus.error) {
                  setState(() {
                    isEnabled = true;
                    isLoading = false;
                  });

                  const SnackBar(
                    content: Text('Error while creating your account.'),
                    shape: StadiumBorder(),
                    width: 250,
                    behavior: SnackBarBehavior.floating,
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Gap(20),
                    Text(
                      'Create an Account',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.apply(fontWeightDelta: 3),
                    ),
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null && value!.length < 5) {
                          return 'Username cannot be less than 5 letters';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
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
                          return '''Password must be a combination of 6 characters with at least 1 number''';
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
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _firstNameController,
                      validator: (value) {
                        final expression = RegExp(r'''^[a-zA-Z]{3,}$''');

                        if (value == null || value.isEmpty) {
                          return '''First name cannot be empty and must be greater than 2 letters''';
                        } else if (value.length < 3) {
                          return 'First name must be greater than 2 letters';
                        } else if (!expression.hasMatch(value)) {
                          return "Make sure your name doesn't contain any numbers";
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'First Name',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Last Name',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _emailController,
                      validator: (value) {
                        final expression = RegExp(
                          r'''^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$''',
                        );

                        if (value == null || value.isEmpty) {
                          return 'Email cannot be empty';
                        } else if (value.isNotEmpty &&
                            !expression.hasMatch(value)) {
                          return 'Please enter a valid email.';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _contactNoController,
                      validator: (value) {
                        final expression = RegExp(r'''^[0-9]{10,}$''');
                        if (value == null || value.isEmpty) {
                          return 'Contact number cannot be empty';
                        } else if (value.isNotEmpty &&
                            !expression.hasMatch(value)) {
                          return 'Please enter a valid 10 digit contact number';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Contact Number',
                      ),
                    ),
                    const Gap(20),
                    TextFormField(
                      enabled: isEnabled,
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                        labelText: 'Description',
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: isLoading
                          ? null
                          : () async {
                              final _imagePicker = ImagePicker();

                              final _ref = await _imagePicker.pickImage(
                                source: ImageSource.gallery,
                              );

                              final _image = File(_ref!.path);

                              setState(() {
                                image = _image;
                              });
                            },
                      child: image != null
                          ? Image.file(
                              image!,
                            )
                          : Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(Icons.image),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Upload an image.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                    ),
                    const Gap(40),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: isLoading
                          ? const SizedBox.shrink()
                          : ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Setting up an Account...'),
                                      shape: StadiumBorder(),
                                      width: 200,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );

                                  context.read<AuthenticationBloc>().add(
                                        AuthenticationSignUp(
                                          username:
                                              _usernameController.text.trim(),
                                          password:
                                              _passwordController.text.trim(),
                                          firstName:
                                              _firstNameController.text.trim(),
                                          lastName:
                                              _lastNameController.text.trim(),
                                          email: _emailController.text.trim(),
                                          contactNo:
                                              _contactNoController.text.trim(),
                                          description: _descriptionController
                                              .text
                                              .trim(),
                                          image: image,
                                        ),
                                      );
                                }
                              },
                              child: const Text('Create Account'),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?  '),
                          GestureDetector(
                            onTap: () => isLoading
                                ? null
                                : Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (context) => const LoginView(),
                                    ),
                                  ),
                            child: Text(
                              'Sign in',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.apply(fontWeightDelta: 3),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
