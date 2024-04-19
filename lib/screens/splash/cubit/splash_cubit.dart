

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';

part 'splash_state.dart';


class SplashCubit extends Cubit<SplashState> {
  final SharedDataRepository sharedDataRepository;
  SplashCubit({required this.sharedDataRepository}) : super(SplashInitialState());


  void addFirebaseUser(User? user){
    sharedDataRepository.addFirebaseUser(user);
  }

  void navigateToNextRouteWithDelay(String route)async {
    await Future.delayed(const Duration(seconds: 5));

    emit(SplashNavigateToNextRoute(route: route));
    
  }
}
