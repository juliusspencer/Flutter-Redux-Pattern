import 'package:flutter_redux_pattern/models/exampleItem.dart';

class ExampleAction {
  final ExampleItem item;

  ExampleAction(this.item);
}

class ExampleAddItemAction {
  ExampleItem item;
  ExampleAddItemAction(this.item);
}

class ExampleRemoveItemAction {
  ExampleItem item;
  ExampleRemoveItemAction(this.item);
}
