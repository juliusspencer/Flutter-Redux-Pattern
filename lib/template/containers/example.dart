import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_pattern/models/appState.dart';
import 'package:flutter_redux_pattern/template/containers/exampleViewModel.dart';
import 'package:flutter_redux_pattern/template/widgets/example.dart';
import 'package:redux/redux.dart';

class ExampleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ExampleViewModel>(
      converter: (Store<AppState> store) {
        return ExampleViewModel.fromStore(store);
      },
      builder: (BuildContext context, ExampleViewModel model) {
        return ExampleScreen(
            title: "Example Screen",
            items: model.items,
            onAdd: model.onAdd,
            onRemove: model.onRemove);
      },
    );
  }
}
