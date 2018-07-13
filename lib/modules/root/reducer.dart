import '../template/reducer.dart';
import '../models/app_state.dart';

/// States, united
AppState appReducer(AppState state, action) {
  return AppState(
    exampleState: exampleReducers(state.exampleState, action),
  );
}
