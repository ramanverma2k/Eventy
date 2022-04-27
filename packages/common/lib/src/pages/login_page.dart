import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

///
class LoginPage extends StatefulWidget {
  ///
  const LoginPage({Key? key}) : super(key: key);

  ///
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _controller = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                SizedBox(
                  height: kDeviceDimensions.height * 0.55,
                  width: kDeviceDimensions.width,
                  child: const AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image(
                      image: AssetImage(
                        'assets/images/signup.png',
                        package: 'common',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: kDefaultPaddingAll,
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
                        controller: _controller,
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
                            return '''Password must be of 6 characters with at least 1 number''';
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
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthenticationBloc>().add(
                                    AuthenticationSignIn(
                                      username: _controller.text.trim(),
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
                                Text('SIGN IN'),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                            onPressed: () => Navigator.push<SignupPage>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupPage(),
                              ),
                            ),
                            child: const Text('Sign up'),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
