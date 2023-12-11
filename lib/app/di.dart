import 'package:clean_architecture_todo_app/app/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

// Dependency injection.
@InjectableInit()
injectDependency(String env) => locator.init(environment: env); 

// injectData() {
//   locator.registerSingleton<TodosDatabase>(TodosDatabaseImpl());
//   locator.registerSingleton<TodosRepository>(TodosRepositoryImpl(locator<TodosDatabaseImpl>()));
// }

// injectDomain() {
//   locator.registerSingleton<GetTodoListUseCase>(GetTodoListUseCase(locator<TodosRepository>()));
//   locator.registerSingleton<CreateTodoUseCase>(CreateTodoUseCase(locator<TodosRepository>()));
//   locator.registerSingleton<UpdateTodoUseCase>(UpdateTodoUseCase(locator<TodosRepository>()));
//   locator.registerSingleton<DeleteTodoUseCase>(DeleteTodoUseCase(locator<TodosRepository>()));
// }


