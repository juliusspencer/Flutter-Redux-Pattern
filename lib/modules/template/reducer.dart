import './actions.dart';
import 'package:redux/redux.dart';

/// Define the state for this reducer
class ExampleState {
  List<ExampleItem> items;

  ExampleState({
    this.items = const [],
  });
}

/// Reducing functions
List<ExampleItem> addItemReducer(List<ExampleItem> items, ExampleAddItemAction action) {
  return List.from(items)..add(action.item);
}
List<ExampleItem> removeItemReducer(List<ExampleItem> items, ExampleRemoveItemAction action) {
  return List.from(items)..remove(action.item);
}

/// Reducer
Reducer<List<ExampleItem>> exampleReducer = combineReducers<List<ExampleItem>>([
  // Each `TypedReducer` will glue Actions of a certain type to the given
  // reducer! This means you don't need to write a bunch of `if` checks
  // manually, and can quickly scan the list of `TypedReducer`s to see what
  // reducer handles what action.
  new TypedReducer<List<ExampleItem>, ExampleAddItemAction>(addItemReducer),
  new TypedReducer<List<ExampleItem>, ExampleRemoveItemAction>(removeItemReducer),
]);
