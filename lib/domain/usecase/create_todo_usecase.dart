import 'package:clean_architecture_todo_app/data/model/todo.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateTodoUseCase {
  final TodosRepository _repository;

  const CreateTodoUseCase(this._repository);
  Future<Todo> execute(
    String title,
    String description,
    bool isCompleted,
    DateTime dueDate,
  ) {
    return _repository.createTodo(title, description, isCompleted, dueDate);
  }
}
