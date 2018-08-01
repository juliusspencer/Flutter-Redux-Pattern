import 'package:flutter_redux_pattern/models/exampleItem.dart';
import 'package:flutter_redux_pattern/template/actions.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

/// Define the state for this reducer
@immutable
class ExampleState {
  final List<ExampleItem> items;
  const ExampleState({this.items = const []});

  ExampleState copyWith({List<ExampleItem> items}) {
    return ExampleState(items: items ?? this.items);
  }

  @override
  int get hashCode {
    return items.hashCode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ExampleState &&
              runtimeType == other.runtimeType &&
              items == other.items;

  @override
  String toString() {
    return 'ExampleState{items: $items}';
  }

}

/// Reducers
final Reducer<ExampleState> exampleReducers = combineReducers<ExampleState>([
  // Each `TypedReducer` will glue Actions of a certain type to the given
  // reducer! This means you don't need to write a bunch of `if` checks
  // manually, and can quickly scan the list of `TypedReducer`s to see what
  // reducer handles what action.
  TypedReducer<ExampleState, ExampleAddItemAction>(addItemReducer),
  TypedReducer<ExampleState, ExampleRemoveItemAction>(removeItemReducer),
]);

/// Reducing functions
ExampleState addItemReducer(ExampleState state, ExampleAddItemAction action) {
  List<ExampleItem> updatedItems = List.from(state.items);
  updatedItems.add(action.item);
  return ExampleState(items: updatedItems);
}

ExampleState removeItemReducer(
    ExampleState state, ExampleRemoveItemAction action) {
  List<ExampleItem> updatedItems = List.from(state.items);
  if(updatedItems.length > 0) updatedItems.removeLast();
  return ExampleState(items: updatedItems);
}
