

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';
import 'package:in_memory/app_constants/show_dialog/show_dialog.dart';
import 'package:in_memory/repositories/firebase_auth_repository.dart';
import 'package:in_memory/screens/forgot_password/cubit/build_state/forgot_password_build_state.dart';
import 'package:in_memory/screens/forgot_password/cubit/listener_state/forgot_password_listener_state.dart';



part 'forgot_password_state.dart';


class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final FirebaseAuthRepository firebaseAuthRepository;
  

  ForgotPasswordCubit({required this.firebaseAuthRepository}) : super(ForgotPasswordInitialState());

 // Reset password
  void resetPassword(String email) async{
    emit(const ForgotPasswordBuildState(showProgressBar: false));

    final result =await  firebaseAuthRepository.resetPassword(email);

    if(result is DataError){
        final errorMessage = result.errorMessage;
        emit(ForgotPasswordBuildState(errorMessage: errorMessage));
        emit(ForgotPasswordListenerState(appSnackBar: AppSnackBar(message: errorMessage,duration: const Duration(seconds: 5))));
        return;
    }

    emit(ForgotPasswordListenerState(showSuccessDialog: ShowDialog(value: "Password reset email send to $email")));

  }

  void navigateBack(){
    emit(const ForgotPasswordBuildState(showProgressBar: false));
    emit(const ForgotPasswordListenerState(navigate: "pop"));
  }
}
