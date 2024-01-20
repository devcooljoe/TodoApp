import 'package:clean_architecture_todo_app/data/model/todo.dart';
import 'package:clean_architecture_todo_app/data/model/todo_list.dart';
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart';
import 'package:clean_architecture_todo_app/domain/usecase/get_todo_list_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/domain/repository/todos_repository_mock.mocks.dart';

void main() {
  final TodosRepository repository = MockTodosRepository();
  final date = DateTime.now();
  final GetTodoListUseCase usecase = GetTodoListUseCase(repository);

  setUp(() {
    when(repository.getTodoList()).thenAnswer(
      (_) async => TodoList(
        values: [
          Todo(
            id: 1,
            title: 'title',
            description: 'description',
            isCompleted: false,
            dueDate: date,
          ),
        ],
      ),
    );
  });

  test('should return TodoList', () async {
    final expected = TodoList(
      values: [
        Todo(id: 1, title: 'title', description: 'description', isCompleted: false, dueDate: date),
      ],
    );
    final actual = await usecase.execute();
    expect(expected, actual);
    verify(repository.getTodoList()).called(1);
  });
}
