// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      isCompleted: Todo.isCompletedFromJson(json['is_completed']),
      dueDate: DateTime.parse(json['due_date'] as String),
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  val['description'] = instance.description;
  val['is_completed'] = Todo.isCompletedToJson(instance.isCompleted);
  val['due_date'] = instance.dueDate.toIso8601String();
  return val;
}
