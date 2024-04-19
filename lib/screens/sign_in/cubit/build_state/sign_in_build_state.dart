

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/screens/sign_in/cubit/sign_in_cubit.dart';

part 'sign_in_build_state.freezed.dart';


@freezed
class SignInBuildState extends SignInState with _$SignInBuildState {

 const  factory SignInBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) String? errorMessage,
  }) = _SignInBuildState;

 
}