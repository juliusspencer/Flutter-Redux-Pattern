import 'package:meta/meta.dart';
import '../template/reducer.dart';

@immutable
class AppState {
  final ExampleState exampleState;

  AppState({
    this.exampleState = const ExampleState(),
  });
}

/// States, united
AppState appReducer(AppState state, action) {
  return AppState(
    exampleState: exampleReducers(state.exampleState, action),
  );
}
