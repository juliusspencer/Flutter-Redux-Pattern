import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:flutter_redux_pattern/modules/template/containers/example.dart';
import 'package:flutter_redux_pattern/modules/root/reducer.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Redux Pattern',
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: new ExampleContainer(),
      ),
    );
  }
}
