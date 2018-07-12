import '../template/reducer.dart';

class AppState {
  final ExampleState exampleState;

  AppState({
    this.exampleState = const ExampleState(),
  });
}

/// States, united
AppState appReducer(AppState state, action) {
  return new AppState(
    exampleState: state.exampleState,
  );
}
