import 'package:clean_architecture_todo_app/domain/entity/typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  @override
  @JsonKey(fromJson: isCompletedFromJson, toJson: isCompletedToJson)
  bool get isCompleted => super.isCompleted;

  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  factory Todo({
    TodoId? id,
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime dueDate,
  }) = _Todo;

  const Todo._();

  factory Todo.fromJson(TodoEntity json) => _$TodoFromJson(json);

  static bool isCompletedFromJson(dynamic data) => data == 1;
  static int isCompletedToJson(bool data) => data ? 1 : 0;

  Todo complete() => copyWith(isCompleted: true);

  Todo incomplete() => copyWith(isCompleted: false);
}
