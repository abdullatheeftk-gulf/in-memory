import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/screens/sign_in/cubit/sign_in_cubit.dart';

part 'sign_in_listener_state.freezed.dart';


@freezed
class SignInListenerState  extends SignInState with _$SignInListenerState {

  const factory SignInListenerState({
    @Default(null) AppSnackBar? appSnackBar,
    @Default(null) String? navigate,
  }) = _SignInListenerState;

 
}