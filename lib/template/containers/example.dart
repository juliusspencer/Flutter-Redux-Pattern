import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../widgets/example.dart';
import '../actions.dart';
import '../../models/app_state.dart';

class _ExampleViewModel {
  final List<ExampleItem> items;
  final Function(ExampleItem item) onAdd;
  final Function(ExampleItem item) onRemove;

  _ExampleViewModel(this.onAdd, this.onRemove, this.items);

  static _ExampleViewModel fromStore(Store<AppState> store) {
    return _ExampleViewModel(
        (item) => store.dispatch(ExampleAddItemAction(item)), // dispatching?
        (item) => store.dispatch(ExampleRemoveItemAction(item)),
        store.state.exampleState.items);
  }
}

class ExampleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ExampleViewModel>(
      converter: (Store<AppState> store) {
        return _ExampleViewModel.fromStore(store);
      },
      builder: (BuildContext context, _ExampleViewModel model) {
        return new ExampleScreen(
            title: "Example Screen",
            items: model.items,
            onAdd: model.onAdd,
            onRemove: model.onRemove);
      },
    );
  }
}
