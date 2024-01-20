import 'package:clean_architecture_todo_app/domain/entity/typedef.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteTodoUseCase {
  final TodosRepository _repository;

  const DeleteTodoUseCase(this._repository);

  Future<void> execute(TodoId id) => _repository.deleteTodo(id);
}
