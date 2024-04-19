import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/show_dialog/show_dialog.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';

part 'home_listener_state.freezed.dart';


@freezed
class HomeListenerState extends HomeState with _$HomeListenerState {

 const  factory HomeListenerState({
  @Default(null) AppSnackBar? appSnackBar,
  @Default(null) String? navigateToRoute,
  @Default(null) ShowDialog? showNoteDeleteDialog,
  @Default(null) ShowDialog? showSignoutDialog,
 }) = _HomeListenerState;

 
}