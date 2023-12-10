import 'package:clean_architecture_todo_app/data/mapper/todo_mapper.dart';
import 'package:clean_architecture_todo_app/data/model/todo_list.dart';

class TodoListMapper {
  static TodoList transformToModel(final List<Map<String, dynamic>> entities) {
    final values = entities.map((entity) => TodoMapper.transformToModel(entity)).toList();
    return TodoList(values: values);
  }

  static List<Map<String, dynamic>> transformToMap(final TodoList model) => model.values.map((value) => TodoMapper.transformToMap(value)).toList();
}
