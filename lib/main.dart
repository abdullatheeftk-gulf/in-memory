import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/local_database/database_init.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';
import 'package:in_memory/repositories/sqflite_repositories.dart';
import 'package:in_memory/screens/add_edit_note/cubit/add_edit_cubit.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';
import 'package:in_memory/screens/home/home_screen.dart';
import 'package:sqflite/sqflite.dart';

late final Database db;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  db = await DatabaseInit.db();
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
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(
              sqfliteRepositories: context.read<SqfliteRepositories>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddEditCubit(
              sqfliteRepositories: context.read<SqfliteRepositories>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
