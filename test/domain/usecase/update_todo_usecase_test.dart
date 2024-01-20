import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:clean_architecture_todo_app/domain/usecase/update_todo_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TodosRepository repository = MockTodosRepository();
  final UpdateTodoUseCase usecase = UpdateTodoUseCase(repository);
  final date = DateTime.now();

  setUp(() {
    when(repository.updateTodo(
      1,
      'title',
      'description',
      true,
      date,
    )).thenAnswer((_) async => {});
  });

  test('should return void', () async {
    await usecase.execute(
      1,
      'title',
      'description',
      true,
      date,
    );
    verify(repository.updateTodo(
      1,
      'title',
      'description',
      true,
      date,
    )).called(1);
  });
}
