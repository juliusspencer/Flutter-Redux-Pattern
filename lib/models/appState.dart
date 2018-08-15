import 'package:flutter_redux_pattern/template/reducer.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final ExampleState exampleState;

  AppState({
    this.exampleState = const ExampleState(),
  });

  AppState copyWith({
    ExampleState exampleState,
  }) {
    return AppState(
      exampleState: exampleState ?? this.exampleState,
    );
  }

  @override
  int get hashCode => exampleState.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          exampleState == other.exampleState;

  @override
  String toString() {
    return 'AppState{exampleState: $exampleState}';
  }
}
