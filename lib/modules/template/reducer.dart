import 'ExampleItem';
import 'ExampleAction';

List<ExampleItem> appReducers(List<ExampleItem> items, dynamic action) {
  if (action is ExampleAction) {
    return addItem(items, action);
  }
  return state;
}

List<ExampleItem> addItem(List<ExampleItem> items, ExampleAction action) {
  return List.from(items)..add(action.item);
}