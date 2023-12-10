abstract class TodosDatabase {
  Future<List<Map<String, dynamic>>> allTodos();
  Future<Map<String, dynamic>> insertTodo(final Map<String, dynamic> todoEntity);
  Future<void> updateTodo(final Map<String, dynamic> todoEntity);
  Future<void> deleteTodo(final int id);
}
