class ExampleAction {
  final ExampleItem item;

  ExampleAction(this.item);
}

class ExampleAddItemAction {
  ExampleItem item;
}

class ExampleRemoveItemAction {
  ExampleItem item;
}

class ExampleItem {
  String name;
  bool checked;

  ExampleItem(this.name, this.checked);
}