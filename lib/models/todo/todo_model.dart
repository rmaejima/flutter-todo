import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const factory TodoModel({
    @Default('') String title,
    @Default('') String subTitle,
    @Default('') String content,
  }) = _TodoModel;
}
