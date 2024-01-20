// Mocks generated by Mockito 5.4.3 from annotations
// in clean_architecture_todo_app/test/mock/domain/repository/todos_repository_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:clean_architecture_todo_app/data/model/todo.dart' as _i3;
import 'package:clean_architecture_todo_app/data/model/todo_list.dart' as _i2;
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTodoList_0 extends _i1.SmartFake implements _i2.TodoList {
  _FakeTodoList_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTodo_1 extends _i1.SmartFake implements _i3.Todo {
  _FakeTodo_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TodosRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodosRepository extends _i1.Mock implements _i4.TodosRepository {
  MockTodosRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.TodoList> getTodoList() => (super.noSuchMethod(
        Invocation.method(
          #getTodoList,
          [],
        ),
        returnValue: _i5.Future<_i2.TodoList>.value(_FakeTodoList_0(
          this,
          Invocation.method(
            #getTodoList,
            [],
          ),
        )),
      ) as _i5.Future<_i2.TodoList>);

  @override
  _i5.Future<_i3.Todo> createTodo(
    String? title,
    String? description,
    bool? isCompleted,
    DateTime? dueDate,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createTodo,
          [
            title,
            description,
            isCompleted,
            dueDate,
          ],
        ),
        returnValue: _i5.Future<_i3.Todo>.value(_FakeTodo_1(
          this,
          Invocation.method(
            #createTodo,
            [
              title,
              description,
              isCompleted,
              dueDate,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Todo>);

  @override
  _i5.Future<void> updateTodo(
    int? id,
    String? title,
    String? description,
    bool? isCompleted,
    DateTime? dueDate,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTodo,
          [
            id,
            title,
            description,
            isCompleted,
            dueDate,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> deleteTodo(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTodo,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
