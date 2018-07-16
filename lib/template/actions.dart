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

class ExampleItem {
  String name;
  bool checked;

  ExampleItem(this.name, this.checked);
}