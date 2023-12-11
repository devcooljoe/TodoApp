import 'package:clean_architecture_todo_app/data/model/todo.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:clean_architecture_todo_app/domain/usecase/create_todo_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TodosRepository repository = MockTodosRepository();
  final CreateTodoUseCase usecase = CreateTodoUseCase(repository);
  final date = DateTime.now();
  final todo = Todo(
    id: 1,
    title: 'title',
    description: 'description',
    isCompleted: false,
    dueDate: date,
  );

  setUp(() {
    when(repository.createTodo('title', 'description', false, date)).thenAnswer((_) async => todo);
  });

  test('should return Todo', () async {
    final expected = await usecase.execute('title', 'description', false, date);
    final actual = todo;
    expect(expected, actual);
    verify(repository.createTodo('title', 'description', false, date));
  });
}
