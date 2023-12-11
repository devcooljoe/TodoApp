import 'package:clean_architecture_todo_app/data/model/todo_list.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTodoListUseCase {
  final TodosRepository _repository;

  const GetTodoListUseCase(this._repository);

  Future<TodoList> execute() => _repository.getTodoList();
}
