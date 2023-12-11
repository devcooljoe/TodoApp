import 'package:clean_architecture_todo_app/domain/entity/typedef.dart';

abstract class TodosDatabase {
  Future<TodoListEntity> allTodos();
  Future<TodoEntity> insertTodo(final TodoEntity todoEntity);
  Future<void> updateTodo(final TodoEntity todoEntity);
  Future<void> deleteTodo(final TodoId id);
}
