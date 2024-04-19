
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';
import 'package:in_memory/repositories/firebase_auth_repository.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';

import 'package:in_memory/screens/sign_in/cubit/build_state/sign_in_build_state.dart';
import 'package:in_memory/screens/sign_in/cubit/listener_state/sign_in_listener_state.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final FirebaseAuthRepository firebaseAuthRepository;
  final SharedDataRepository sharedDataRepository;
  SignInCubit({required this.firebaseAuthRepository, required this.sharedDataRepository}) : super(SignIninitialState());

  void signIn({required String email, required String password}) async{
    emit(const SignInBuildState(showProgressBar: true));

    final result = await firebaseAuthRepository.signIn(email: email, password: password);

    if(result is DataError){
        final errorMessage = result.errorMessage;
        emit(SignInBuildState(errorMessage: errorMessage));
        emit(SignInListenerState(appSnackBar: AppSnackBar(message: errorMessage,duration: const Duration(seconds: 5))));
        return;
    }

    emit(const SignInBuildState(showProgressBar: false));
    emit(const SignInListenerState(navigate: "home_screen"));

  }

  void navigateToSignUpScreen()async{
    emit(const SignInBuildState(showProgressBar: false));
    emit(const SignInListenerState(navigate: "sign_up_screen"));
  }

  void setFirebaseAuthUsertoShardRepository(User? user){
    sharedDataRepository.addFirebaseUser(user);
  }

  void navigateToForgotPasswordScreen(){
    emit(const SignInBuildState(showProgressBar: false));
    emit(const SignInListenerState(navigate: "forgot_password_screen"));
  }


}
