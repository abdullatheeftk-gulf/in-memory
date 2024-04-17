import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';

part 'home_build_state.freezed.dart';


@freezed
class HomeBuildState<T> extends HomeState with _$HomeBuildState {

  const factory HomeBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) String? errorMessage
  }) = _HomeBuildState;

  
}