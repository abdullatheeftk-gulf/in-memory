

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/show_dialog/show_dialog.dart';
import 'package:in_memory/screens/forgot_password/cubit/forgot_password_cubit.dart';

part 'forgot_password_listener_state.freezed.dart';


@freezed
class ForgotPasswordListenerState  extends ForgotPasswordState with _$ForgotPasswordListenerState {

  const factory ForgotPasswordListenerState({
    @Default(null) AppSnackBar? appSnackBar,
    @Default(null) String? navigate,
    @Default(null) ShowDialog? showSuccessDialog
  }) = _ForgotPasswordListenerState;

 
}