import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/main.dart';
import 'package:in_memory/screens/home/home_screen.dart';
import 'package:in_memory/screens/sign_in/sign_in_screen.dart';
import 'package:in_memory/screens/splash/cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashCubit _splashcubit;

  late final StreamSubscription<User?> _userSubscription;

  @override
  void initState() {
    //initialize splash cubit
    _splashcubit = context.read<SplashCubit>();

    _userSubscription = firebaseAuth.authStateChanges().listen((User? user) {
      // adding firebase user to shared repository
      _splashcubit.addFirebaseUser(user);

      if (user == null) {
        _splashcubit.navigateToNextRouteWithDelay("sign_in_screen");
      } else {
        _splashcubit.navigateToNextRouteWithDelay("home_screen");
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _userSubscription.cancel();
    super.dispose();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {

        // Navigation state
        if (state is SplashNavigateToNextRoute) {
          final route = state.route;
          if (route == "sign_in_screen") {

            // Navigate to sign in screen
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const SignInscreen()));
            return;
          }

          // else Navigate to home screen
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
      },

      //Scaffold
      child: const Scaffold(
        floatingActionButton: CircularProgressIndicator(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "In Memory",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Platypi', fontSize: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
