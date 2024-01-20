// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture_todo_app/data/datasource/database/todos_database.dart'
    as _i3;
import 'package:clean_architecture_todo_app/data/datasource/database/todos_database_impl.dart'
    as _i4;
import 'package:clean_architecture_todo_app/data/repository/todos_repository_impl.dart'
    as _i6;
import 'package:clean_architecture_todo_app/domain/repository/todos_repository.dart'
    as _i5;
import 'package:clean_architecture_todo_app/domain/usecase/create_todo_usecase.dart'
    as _i9;
import 'package:clean_architecture_todo_app/domain/usecase/delete_todo_usecase.dart'
    as _i10;
import 'package:clean_architecture_todo_app/domain/usecase/get_todo_list_usecase.dart'
    as _i11;
import 'package:clean_architecture_todo_app/domain/usecase/update_todo_usecase.dart'
    as _i7;
import 'package:clean_architecture_todo_app/domain/usecase/update_todo_usecase_impl.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.TodosDatabase>(
      () => _i4.TodosDatabaseImpl(),
      registerFor: {_dev},
    );
    gh.factory<_i5.TodosRepository>(
      () => _i6.TodosRepositoryImpl(gh<_i3.TodosDatabase>()),
      registerFor: {_dev},
    );
    gh.factory<_i7.UpdateTodoUseCase>(
        () => _i7.UpdateTodoUseCase(gh<_i5.TodosRepository>()));
    gh.factory<_i8.UpdateTodoUseCaseImpl>(
        () => _i8.UpdateTodoUseCaseImpl(gh<_i5.TodosRepository>()));
    gh.factory<_i9.CreateTodoUseCase>(
        () => _i9.CreateTodoUseCase(gh<_i5.TodosRepository>()));
    gh.factory<_i10.DeleteTodoUseCase>(
        () => _i10.DeleteTodoUseCase(gh<_i5.TodosRepository>()));
    gh.factory<_i11.GetTodoListUseCase>(
        () => _i11.GetTodoListUseCase(gh<_i5.TodosRepository>()));
    return this;
  }
}
