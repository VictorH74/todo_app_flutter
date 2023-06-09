import 'package:api/api.dart';

/// {@template api}
/// The interface and models for an API providing access to todos
/// {@template}
abstract class Api {
  /// {@macro api}
  const Api();

  /// Retrieve all 'collection theme'
  Future<CollectionTheme>? getCollectionTheme(String collectionTitle);

  /// Retrieve all 'todo'
  Stream<List<Todo>> getTodos();

  /// Retrieve all 'todo collections'
  Stream<List<TodoCollection>> getCollections();

  /// Create or update a 'todo'
  Future<void> saveTodo(Todo todo);

  /// Create or update a 'todo'
  Future<void> saveCollection(TodoCollection collection);

  /// Create or update a 'collection theme'
  Future<void> saveCollectionTheme(CollectionTheme collectionTheme);

  /// Delete a 'todo'
  Future<void> deleteTodo(String id);

  /// Delete a 'todo'
  Future<void> deleteCollection(String title);

  /// Delete all 'todo'
  Future<void> clearCompleted();

  /// Delete all 'collection theme'
  Future<void> deleteCollectionTheme(String collectionTitle);

  /// Update the isDone field from all 'todo' to true
  Future<void> completeAll();

}

/// Not found 'todo' exception
class TodoNotFoundException implements Exception {}
