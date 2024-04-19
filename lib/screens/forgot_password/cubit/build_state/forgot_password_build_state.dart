import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/screens/forgot_password/cubit/forgot_password_cubit.dart';

part 'forgot_password_build_state.freezed.dart';


@freezed
class ForgotPasswordBuildState extends ForgotPasswordState with _$ForgotPasswordBuildState {
  
  const factory ForgotPasswordBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) String? errorMessage,
  }) = _ForgotPasswordBuildState;

  
}