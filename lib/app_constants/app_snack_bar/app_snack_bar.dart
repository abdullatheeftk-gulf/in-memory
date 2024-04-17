import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_snack_bar.freezed.dart';


@freezed
class AppSnackBar with _$AppSnackBar {

  const factory AppSnackBar({
    required String message,
    @Default(null) Color? backgroundColor,
    @Default(Duration(seconds: 5)) Duration duration,
  }) = _AppSnackBar;

}