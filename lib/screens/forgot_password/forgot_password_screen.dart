import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/hide_keyboard_function/hide_keyboard_function.dart';
import 'package:in_memory/app_constants/validate_email/validate_email.dart';
import 'package:in_memory/screens/forgot_password/cubit/build_state/forgot_password_build_state.dart';
import 'package:in_memory/screens/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:in_memory/screens/forgot_password/cubit/listener_state/forgot_password_listener_state.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // controllers
  final TextEditingController _emailController = TextEditingController();

  // To show progressBar
  bool _showProgressBar = false;

  // To show error
  String? _errorMessage;

  // form key
  final _formKey = GlobalKey<FormState>();

  // SignInCubit
  late final ForgotPasswordCubit _forgotPasswordCubit;

  @override
  void initState() {
    _forgotPasswordCubit = context.read<ForgotPasswordCubit>();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  void _showPasswordResetSuccessDialog(String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text(message, style: const TextStyle(fontSize: 18)),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _forgotPasswordCubit.navigateBack();
                  },
                  child: const Text(
                    "Ok",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordListenerState) {
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
          if (state.navigate == "pop") {
            Navigator.pop(context);
          }

          if (state.showSuccessDialog != null) {
            final message = state.showSuccessDialog!.value;
            _showPasswordResetSuccessDialog(message);
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is ForgotPasswordListenerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is ForgotPasswordBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        // variable loading
        if (state is ForgotPasswordBuildState) {
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
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: "Platypi"),
                        ),
                      ),

                      const SizedBox(
                        height: 64,
                      ),

                      // password TextField
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          label: Text("Email"),
                          hintText: "Enter email",
                          hintStyle: TextStyle(color: Colors.black38),
                          helperText: "Enter email to reset password",
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is empty";
                          }
                          if (!isEmailValid(value)) {
                            return "Email is not valid";
                          }

                          return null;
                        },
                        onFieldSubmitted: (value) {
                          hideKeyboard(context);
                          if (_formKey.currentState!.validate()) {
                            final email = _emailController.text.trim();
                            _forgotPasswordCubit.resetPassword(email);
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16,
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
                                  _forgotPasswordCubit.resetPassword(email);
                                  // Todo
                                }
                              },
                        child: _showProgressBar
                            ? const Text("Please Wait..")
                            : const Text("Send verification eamil"),
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
