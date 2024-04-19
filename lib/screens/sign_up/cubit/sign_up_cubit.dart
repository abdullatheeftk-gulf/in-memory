import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';
import 'package:in_memory/repositories/firebase_auth_repository.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';

import 'package:in_memory/screens/sign_up/cubit/build_state/sign_up_build_state.dart';
import 'package:in_memory/screens/sign_up/cubit/listener_state/sign_up_listener_state.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final FirebaseAuthRepository firebaseAuthRepository;
  final SharedDataRepository sharedDataRepository;
  SignUpCubit({
    required this.firebaseAuthRepository,
    required this.sharedDataRepository,
  }) : super(SignUpInitialState());

  void signUp({required String email, required String password}) async {
    emit(const SignUpBuildState(showProgressBar: true));

    // sign up
    final result =
        await firebaseAuthRepository.signUp(email: email, password: password);

    if (result is DataError) {
      final errorMessage = result.errorMessage;
      emit(
          SignUpBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(SignUpListenerState(
          appSnackBar: AppSnackBar(
              message: errorMessage, duration: const Duration(seconds: 5))));
      return;
    }

    // Later change to profile screen
    emit(const SignUpListenerState(navigate: "home_screen"));
  }

  void setFirebaseAuthUsertoShardRepository(User? user){
    sharedDataRepository.addFirebaseUser(user);
  }
}
