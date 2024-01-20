import 'package:clean_architecture_todo_app/data/datasource/database/todos_database.dart';
import 'package:clean_architecture_todo_app/data/model/todo.dart';
import 'package:clean_architecture_todo_app/data/model/todo_list.dart';
import 'package:clean_architecture_todo_app/domain/entity/typedef.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@Injectable(as: TodosRepository)
class TodosRepositoryImpl implements TodosRepository {
  final TodosDatabase database;

  const TodosRepositoryImpl(this.database);

  @override
  Future<TodoList> getTodoList() async {
    final todoListEntity = await database.allTodos();
    return TodoList.fromJson({'values': todoListEntity});
  }

  @override
  Future<Todo> createTodo(
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) async {
    final todoEntity = await database.insertTodo(
      Todo(
        title: title,
        description: description,
        isCompleted: isCompleted,
        dueDate: dueDate,
        id: null,
      ).toJson(),
    );
    return Todo.fromJson(todoEntity);
  }

  @override
  Future<void> updateTodo(
    final TodoId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) async {
    final todo = Todo(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      dueDate: dueDate,
    );
    await database.updateTodo(todo.toJson());
  }

  @override
  Future<void> deleteTodo(final TodoId id) async => await database.deleteTodo(id);
}
