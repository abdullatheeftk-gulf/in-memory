import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/hide_keyboard_function/hide_keyboard_function.dart';
import 'package:in_memory/app_constants/validate_email/validate_email.dart';
import 'package:in_memory/main.dart';
import 'package:in_memory/screens/home/home_screen.dart';
import 'package:in_memory/screens/sign_up/cubit/build_state/sign_up_build_state.dart';
import 'package:in_memory/screens/sign_up/cubit/listener_state/sign_up_listener_state.dart';
import 'package:in_memory/screens/sign_up/cubit/sign_up_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // To show progressBar
  bool _showProgressBar = false;

  // To show error
  String? _errorMessage;

  // form key
  final _formKey = GlobalKey<FormState>();

  // show obsured text
  bool _showObscuredTextForPassword = true;
  bool _showObscuredTextForConfirmPassword = true;

  // SignInCubit
  late final SignUpCubit _signUpCubit;

  // authListener
  late final StreamSubscription<User?> _authListener;

  @override
  void initState() {
    _signUpCubit = context.read<SignUpCubit>();
    _authListener = firebaseAuth.authStateChanges().listen((User? user) {
      _signUpCubit.setFirebaseAuthUsertoShardRepository(user);
    });
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _authListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpListenerState) {
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
            if (state.navigate == "home_screen") {
              // Navigator.pushAndRemoveUntil(context,
              //     MaterialPageRoute(builder: (context) => const HomeScreen()));
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false);
            }
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is SignUpListenerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is SignUpBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        // variable loading
        if (state is SignUpBuildState) {
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }

        // Scaffold
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
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
                            "Create Account",
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
                        controller: _emailController,
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
                        controller: _passwordController,
                        decoration: InputDecoration(
                          suffix: _showObscuredTextForPassword
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredTextForPassword =
                                          !_showObscuredTextForPassword;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_rounded,
                                    size: 18,
                                  ))
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredTextForPassword =
                                          !_showObscuredTextForPassword;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_off_rounded,
                                    size: 18,
                                  ),
                                ),
                          suffixIconConstraints: BoxConstraints.tight(Size.zero),
                          label: const Text("Password"),
                          hintText: "Enter password",
                          hintStyle: const TextStyle(color: Colors.black38),
                          border: const OutlineInputBorder(),
                        ),
                        obscureText: _showObscuredTextForPassword,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is empty";
                          }
                          if (value.length < 6) {
                            return "Password length is less than 6";
                          }
                          final password = _passwordController.text.trim();
                          final confirmPassword = _confirmPasswordController.text.trim();
                          if(password != confirmPassword){
                            return "paswords are not maching";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                  
                      // password TextField
                      TextFormField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          suffix: _showObscuredTextForConfirmPassword
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredTextForConfirmPassword =
                                          !_showObscuredTextForConfirmPassword;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_rounded,
                                    size: 18,
                                  ))
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showObscuredTextForConfirmPassword =
                                          !_showObscuredTextForConfirmPassword;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility_off_rounded,
                                    size: 18,
                                  ),
                                ),
                          suffixIconConstraints: BoxConstraints.tight(Size.zero),
                          label: const Text("Confirm Password"),
                          hintText: "Confirm Password",
                          hintStyle: const TextStyle(color: Colors.black38),
                          border: const OutlineInputBorder(),
                        ),
                        obscureText: _showObscuredTextForConfirmPassword,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) {
                          hideKeyboard(context);
                          if (_formKey.currentState!.validate()) {
                            final email = _emailController.text.trim();
                            final password = _passwordController.text.trim();
                            // final confirmPassword = _confirmPasswordController.text.trim();
                  
                            // Sign up
                            _signUpCubit.signUp(email: email, password: password);
                          }
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Confirm Password is empty";
                          }
                          if (value.length < 6) {
                            return "Confirm Password length is less than 6";
                          }
                          final password = _passwordController.text.trim();
                          final confirmPassword = _confirmPasswordController.text.trim();
                          if(password != confirmPassword){
                            return "paswords are not maching";
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
                                  final email = _emailController.text.trim();
                                  final password =
                                      _passwordController.text.trim();
                                  // final confirmPassword = _confirmPasswordController.text.trim();
                  
                                  // Sign up
                  
                                  _signUpCubit.signUp(
                                      email: email, password: password);
                                }
                              },
                        child: _showProgressBar
                            ? const Text("Please Wait..")
                            : const Text("Sign Up"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 36,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Sign in",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
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
