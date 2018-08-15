import 'package:flutter_redux_pattern/models/appState.dart';
import 'package:flutter_redux_pattern/models/exampleItem.dart';
import 'package:flutter_redux_pattern/template/actions.dart';
import 'package:redux/redux.dart';

class ExampleViewModel {
  final List<ExampleItem> items;
  final Function(ExampleItem item) onAdd;
  final Function(ExampleItem item) onRemove;

  ExampleViewModel(this.onAdd, this.onRemove, this.items);

  static ExampleViewModel fromStore(Store<AppState> store) {
    return ExampleViewModel(
            (item) => store.dispatch(ExampleAddItemAction(item)), // dispatching?
            (item) => store.dispatch(ExampleRemoveItemAction(item)),
        store.state.exampleState.items);
  }
}

