import 'package:flutter/material.dart';
import 'package:flutter_redux_pattern/models/exampleItem.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => onAdd(ExampleItem("example", true)),
                icon: Icon(Icons.add),
                color: Colors.blue[500],
              ),
              Text(
                'Items: ${this.items.length.toString()}'
              ),
              IconButton(
                onPressed: () => onRemove(ExampleItem("example", true)),
                icon: Icon(Icons.remove),
                color: Colors.red[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}