import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/screens/sign_up/cubit/sign_up_cubit.dart';

part 'sign_up_listener_state.freezed.dart';


@freezed
class SignUpListenerState extends SignUpState with _$SignUpListenerState {

  const factory SignUpListenerState({
    @Default(null) AppSnackBar? appSnackBar,
    @Default(null) String? navigate,
  }) = _SignUpListenerState;

  
}