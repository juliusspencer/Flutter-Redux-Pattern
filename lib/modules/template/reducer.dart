import './actions.dart';
import 'package:redux/redux.dart';

/// Define the state for this reducer
class ExampleState {
  final List<ExampleItem> items;

  const ExampleState({
    this.items = const [],
  });
}

/// Reducers
final Reducer<ExampleState> exampleReducers = combineReducers<ExampleState>([
  // Each `TypedReducer` will glue Actions of a certain type to the given
  // reducer! This means you don't need to write a bunch of `if` checks
  // manually, and can quickly scan the list of `TypedReducer`s to see what
  // reducer handles what action.
  new TypedReducer<ExampleState, ExampleAddItemAction>(addItemReducer),
  new TypedReducer<ExampleState, ExampleRemoveItemAction>(removeItemReducer),
]);

/// Reducing functions
ExampleState addItemReducer(ExampleState state, ExampleAddItemAction action) {
  print('Adding…');
  state.items.add(action.item);
  return state;
}

ExampleState removeItemReducer(ExampleState state, ExampleRemoveItemAction action) {
  print('Removing…');
  state.items.remove(action.item);
  return state;
}
