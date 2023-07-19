import 'package:flutter/material.dart';

class ScrollControllerQuery extends InheritedWidget {
  ScrollControllerQuery(
      {super.key, required this.scrollController, required super.child});

  final ScrollController scrollController;

  static ScrollControllerQuery? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScrollControllerQuery>();
  }

  static ScrollController of(BuildContext context) {
    final ScrollControllerQuery? result = maybeOf(context);
    assert(result != null, 'No ScrollControllerQuery found in context');
    return context
        .dependOnInheritedWidgetOfExactType<ScrollControllerQuery>()!
        .scrollController;
  }

  @override
  bool updateShouldNotify(ScrollControllerQuery oldWidget) =>
      scrollController != oldWidget.scrollController;
}
