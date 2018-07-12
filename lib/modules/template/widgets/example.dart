import 'package:flutter/material.dart';
import '../actions.dart';

class ExampleScreen extends StatelessWidget {

  final String title;
  final Function(ExampleItem) onAdd;
  final Function(ExampleItem) onRemove;
  final List<ExampleItem> items;

  ExampleScreen({
    Key key,
    this.title,
    @required this.onAdd,
    @required this.onRemove,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new IconButton(
              onPressed: () => onAdd(ExampleItem("example", true)),
//              onPressed: () => print('Add'),
              icon: Icon(Icons.add),
              color: Colors.blue[500],
            ),
            Text(
              'Items: ${this.items.length.toString()}'
            ),
            new IconButton(
              onPressed: () => onRemove(ExampleItem("example", true)),
              icon: Icon(Icons.remove),
              color: Colors.red[500],
            ),
          ],
        ),
      ),
    );
  }
}