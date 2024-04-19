import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/screens/sign_up/cubit/sign_up_cubit.dart';

part 'sign_up_build_state.freezed.dart';


@freezed
class SignUpBuildState extends SignUpState with _$SignUpBuildState {

 const  factory SignUpBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) String? errorMessage,
  }) = _SignUpBuildState;

  
}