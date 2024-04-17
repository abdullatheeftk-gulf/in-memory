import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/screens/add_edit_note/cubit/add_edit_cubit.dart';

part 'add_edit_build_state.freezed.dart';


@freezed
class AddEditBuildState<T> extends AddEditState with _$AddEditBuildState {

  const factory AddEditBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) String? errorMessage
  }) = _AddEditBuildState;

  
}