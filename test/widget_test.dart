// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_redux_pattern/main.dart';
import 'package:flutter_redux_pattern/root/reducer.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_pattern/models/appState.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    final store = new Store<AppState>(appReducer, initialState: AppState());

    await tester.pumpWidget(new FlutterReduxApp(store));

    // Verify that our counter starts at 0.
    expect(find.text('Items: 0'), findsOneWidget);
    expect(find.text('Items: 1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Items: 0'), findsNothing);
    expect(find.text('Items: 1'), findsOneWidget);

    // Tap the '-' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Items: 0'), findsOneWidget);
    expect(find.text('Items: 1'), findsNothing);
  });
}
