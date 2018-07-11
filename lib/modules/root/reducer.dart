import 'package:redux/redux.dart';
import '../template/reducer.dart';

/// States, united
AppState appReducer(AppState state, action) {
  return new AppState(
    exampleState: state.exampleState,
  );
}

class AppState {
  final ExampleState exampleState;

  AppState({
    this.exampleState,
  });

}

