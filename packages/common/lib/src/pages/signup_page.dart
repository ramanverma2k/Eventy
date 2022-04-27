import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

///
class SignupPage extends StatefulWidget {
  ///
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _contactNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscured = true;
  bool _obscured2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    splashRadius: 20,
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: kDefaultPaddingAll.copyWith(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null && value!.length < 5) {
                            return 'Username cannot be less than 5 letters';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'abc123',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.user,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
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
                        decoration: InputDecoration(
                          hintText: 'abc@gmail.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.envelope,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          final expression = RegExp(r'''^[a-zA-Z ]{3,}$''');

                          if (value == null || value.isEmpty) {
                            return '''Name cannot be empty and must be greater than 2 letters''';
                          } else if (value.length < 3) {
                            return 'Name must be greater than 2 letters';
                          } else if (!expression.hasMatch(value)) {
                            return '''Make sure your name doesn't contain any numbers''';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.font,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
                        controller: _contactNoController,
                        validator: (value) {
                          final expression = RegExp(r'''^[0-9]{10,}$''');
                          if (value == null || value.isEmpty) {
                            return 'Contact number cannot be empty';
                          } else if (value.isNotEmpty &&
                              !expression.hasMatch(value)) {
                            return '''Please enter a valid 10 digit contact number''';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Your contact number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.phone,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscured,
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
                        decoration: InputDecoration(
                          hintText: 'Your password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.lock,
                              size: 15,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscured = !_obscured;
                                });
                              },
                              child: FaIcon(
                                _obscured
                                    ? FontAwesomeIcons.solidEyeSlash
                                    : FontAwesomeIcons.solidEye,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _obscured2,
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

                          if (value != _passwordController.text.trim()) {
                            return "Passwords don't match";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Confirm your password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(15),
                            child: FaIcon(
                              FontAwesomeIcons.lock,
                              size: 15,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscured2 = !_obscured2;
                                });
                              },
                              child: FaIcon(
                                _obscured2
                                    ? FontAwesomeIcons.solidEyeSlash
                                    : FontAwesomeIcons.solidEye,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthenticationBloc>().add(
                                    AuthenticationSignUp(
                                      username: _usernameController.text.trim(),
                                      email: _emailController.text.trim(),
                                      name: _nameController.text.trim(),
                                      contactNo:
                                          _contactNoController.text.trim(),
                                      password: _passwordController.text.trim(),
                                    ),
                                  );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: SizedBox(
                            height: kDeviceDimensions.height * 0.06,
                            width: kDeviceDimensions.width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox.shrink(),
                                Text('SIGN UP'),
                                CircleAvatar(
                                  maxRadius: 15,
                                  child: FaIcon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      const Center(
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Gap(20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: SizedBox(
                            height: kDeviceDimensions.height * 0.06,
                            width: kDeviceDimensions.width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  maxRadius: 15,
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 15,
                                  ),
                                ),
                                Gap(15),
                                Text('Login with Google'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          TextButton(
                            onPressed: () => Navigator.push<SignupPage>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            ),
                            child: const Text('Sign in'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
