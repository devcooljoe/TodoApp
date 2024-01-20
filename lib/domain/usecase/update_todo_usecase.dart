import 'package:clean_architecture_todo_app/domain/entity/typedef.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateTodoUseCase {
  final TodosRepository _repository;

  const UpdateTodoUseCase(this._repository);

  Future<void> execute(
    final TodoId id,
    final String title,
    final String description,
    final bool isCompleted,
    final DateTime dueDate,
  ) {
    return _repository.updateTodo(id, title, description, isCompleted, dueDate);
  }
}
