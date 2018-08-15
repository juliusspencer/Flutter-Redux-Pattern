import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_pattern/models/appState.dart';
import 'package:flutter_redux_pattern/root/reducer.dart';
import 'package:flutter_redux_pattern/template/containers/example.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState());
  runApp(FlutterReduxApp(store));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'A Flutter Redux Pattern',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: ExampleContainer(),
      ),
    );
  }
}
