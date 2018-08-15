![Icon]
(/img/icon.png)

# `flutter_redux_pattern`

A skeleton Flutter application based on the redux pattern.

This pattern is loosely based on the following pattern:
[react-redux-typescript-pattern](https://github.com/karlvr/react-redux-typescript-pattern)

## Getting Started

Copy the `template` folder to create new group of widgets. For example: `order` or `user` widgets.

When creating a new store in your new `reducer`, make sure you add it to your `appState`. Then start to add actions to your `reducer` to alter the state.

Containers refer to model classes used to receive app state and make it available to your widgets. They also provide access and callbacks to the app state.