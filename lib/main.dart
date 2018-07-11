import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'home.dart';
import 'modules/root/reducer.dart';

void main() {
  final store =
      new Store<AppState>(
          appReducer,
          initialState: new AppState());
  runApp(new FlutterReduxApp(store));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<AppState> store;

  FlutterReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Redux Pattern',
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: new HomeScreen(title: 'Flutter Redux Pattern'),
      ),
    );
  }
}
