import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/screens/add_edit_note/cubit/add_edit_cubit.dart';

part 'add_edit_listener_state.freezed.dart';


@freezed
class AddEditListenerState extends AddEditState with _$AddEditListenerState {

  const factory AddEditListenerState({
    @Default(null) AppSnackBar? appSnackBar,
  @Default(null) String? navigateToRoute,
  }) = _AddEditListenerState;


}