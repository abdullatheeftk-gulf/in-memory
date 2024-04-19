import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/local_database/database_init.dart';
import 'package:in_memory/repositories/firebase_auth_repository.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';
import 'package:in_memory/repositories/sqflite_repositories.dart';
import 'package:in_memory/screens/add_edit_note/cubit/add_edit_cubit.dart';
import 'package:in_memory/screens/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';
import 'package:in_memory/screens/sign_in/cubit/sign_in_cubit.dart';
import 'package:in_memory/screens/sign_up/cubit/sign_up_cubit.dart';
import 'package:in_memory/screens/splash/cubit/splash_cubit.dart';
import 'package:in_memory/screens/splash/splash_screen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Sqlite client
late final Database db;

// Firebase auth instance
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // sqlite initialization
  db = await DatabaseInit.db();

  // Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => SqfliteRepositories(),
        ),
        RepositoryProvider(
          create: (context) => SharedDataRepository(),
        ),
        RepositoryProvider(
          create: (context) => FirebaseAuthRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
           BlocProvider(
            create: (context) => SplashCubit(
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => HomeCubit(
              sqfliteRepositories: context.read<SqfliteRepositories>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
              firebaseAuthRepository: context.read<FirebaseAuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddEditCubit(
              sqfliteRepositories: context.read<SqfliteRepositories>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => SignInCubit(
              firebaseAuthRepository: context.read<FirebaseAuthRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
           BlocProvider(
            create: (context) => SignUpCubit(
              firebaseAuthRepository: context.read<FirebaseAuthRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
           BlocProvider(
            create: (context) => ForgotPasswordCubit(
              firebaseAuthRepository: context.read<FirebaseAuthRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
