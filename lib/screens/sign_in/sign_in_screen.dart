import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/hide_keyboard_function/hide_keyboard_function.dart';
import 'package:in_memory/app_constants/validate_email/validate_email.dart';
import 'package:in_memory/main.dart';
import 'package:in_memory/screens/forgot_password/forgot_password_screen.dart';
import 'package:in_memory/screens/home/home_screen.dart';
import 'package:in_memory/screens/sign_in/cubit/build_state/sign_in_build_state.dart';
import 'package:in_memory/screens/sign_in/cubit/listener_state/sign_in_listener_state.dart';
import 'package:in_memory/screens/sign_in/cubit/sign_in_cubit.dart';
import 'package:in_memory/screens/sign_up/sign_up_screen.dart';

class SignInscreen extends StatefulWidget {
  const SignInscreen({super.key});

  @override
  State<SignInscreen> createState() => _SignInscreenState();
}

class _SignInscreenState extends State<SignInscreen> {
  // controllers
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  // To show progressBar
  bool _showProgressBar = false;

  // To show error
  String? _errorMessage;

  // form key
  final _formKey = GlobalKey<FormState>();

  // show obsured text
  bool _showObscuredText = true;

  // SignInCubit
  late final SignInCubit _signInCubit;

  // authListener
  late final StreamSubscription<User?> _authListener;

  @override
  void initState() {
    _signInCubit = context.read<SignInCubit>();
    _authListener = firebaseAuth.authStateChanges().listen((User? user) {
      _signInCubit.setFirebaseAuthUsertoShardRepository(user);
    });
    super.initState();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _authListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInListenerState) {
          // Show snackbar
          if (state.appSnackBar != null) {
            final appSnackBar = state.appSnackBar;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(appSnackBar!.message),
                backgroundColor: appSnackBar.backgroundColor,
                duration: appSnackBar.duration,
              ),
            );
          }
          if (state.navigate != null) {
            if (state.navigate == "sign_up_screen") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen()));
            }
            if (state.navigate == "home_screen") {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            }

            if (state.navigate == "forgot_password_screen") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
            }
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is SignInListenerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is SignInBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        // variable loading
        if (state is SignInBuildState) {
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }

        // Scaffold
        return Scaffold(
          floatingActionButton: _showProgressBar
              ? const CircularProgressIndicator()
              : const SizedBox(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Welcome Back!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontFamily: "Platypi"),
                          )),

                      const SizedBox(
                        height: 64,
                      ),

                      // email  TextField
                      TextFormField(
                        controller: _emailcontroller,
                        decoration: const InputDecoration(
                            label: Text("Email"),
                            hintText: "Enter email",
                            hintStyle: TextStyle(color: Colors.black38),
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is empty";
                          }
                          if (!isEmailValid(value)) {
                            return "Email is not valid";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 16,
                      ),

                      // password TextField
                      TextFormField(
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          suffix: _showObscuredText
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredText = !_showObscuredText;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_rounded,
                                    size: 18,
                                  ))
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredText = !_showObscuredText;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_off_rounded,
                                    size: 18,
                                  ),
                                ),
                          suffixIconConstraints:
                              BoxConstraints.tight(Size.zero),
                          label: const Text("Password"),
                          hintText: "Enter password",
                          hintStyle: const TextStyle(color: Colors.black38),
                          border: const OutlineInputBorder(),
                        ),
                        obscureText: _showObscuredText,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) {
                          hideKeyboard(context);
                          if (_formKey.currentState!.validate()) {
                            final email = _emailcontroller.text.trim();
                            final password = _passwordcontroller.text.trim();

                            // Sign in
                            _signInCubit.signIn(
                                email: email, password: password);
                          }
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is empty";
                          }
                          if (value.length < 6) {
                            return "Password length is less than 6";
                          }
                          return null;
                        },
                      ),

                      _errorMessage == null
                          ? const SizedBox(
                              height: 14,
                            )
                          : Text(
                              "Error:- $_errorMessage",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.error),
                            ),

                      const SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        onPressed: _showProgressBar
                            ? null
                            : () {
                                hideKeyboard(context);
                                if (_formKey.currentState!.validate()) {
                                  final email = _emailcontroller.text.trim();
                                  final password =
                                      _passwordcontroller.text.trim();

                                  // Sign in
                                  _signInCubit.signIn(
                                      email: email, password: password);
                                }
                              },
                        child: _showProgressBar
                            ? const Text("Please Wait..")
                            : const Text("Sign In"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 36,
                        child: TextButton(
                          onPressed: () {
                            _signInCubit.navigateToForgotPasswordScreen();
                          },
                          child: const Text(
                            "Forgotten Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 36,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Or"),
                            TextButton(
                              onPressed: () {
                                _signInCubit.navigateToSignUpScreen();
                              },
                              child: const Text(
                                "Create a New Account",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
