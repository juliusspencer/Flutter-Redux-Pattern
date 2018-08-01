import 'package:flutter_redux_pattern/models/appState.dart';
import 'package:flutter_redux_pattern/template/reducer.dart';

/// States, united
AppState appReducer(AppState state, action) {
  return AppState(
    exampleState: exampleReducers(state.exampleState, action),
  );
}
