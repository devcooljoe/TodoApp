import 'package:clean_architecture_todo_app/data/model/todo_id.dart';

abstract class DeleteTodoUseCase {
  Future<void> execute(final TodoId id);
}
