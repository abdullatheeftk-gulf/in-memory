import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_dialog.freezed.dart';

@freezed
class ShowDialog<T> with _$ShowDialog {
  const factory ShowDialog({
    required T value
}) = _ShowDialog;
}
