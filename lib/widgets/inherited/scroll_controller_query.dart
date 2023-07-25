import 'package:flutter/material.dart';

class ScrollControllerQuery extends InheritedWidget {
  ScrollControllerQuery(
      {super.key, required this.scrollController, required super.child});

  final ScrollController scrollController;

  static ScrollControllerQuery? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ScrollControllerQuery>();
  }

  static ScrollControllerQuery of(BuildContext context) {
    final ScrollControllerQuery? result = maybeOf(context);
    assert(result != null, 'No ScrollControllerQuery found in context');
    return context.dependOnInheritedWidgetOfExactType<ScrollControllerQuery>()!;
  }

  static ScrollController controllerOf(BuildContext context) {
    return ScrollControllerQuery.of(context).scrollController;
  }

  void scrollTo(int index, double scrollDistance) {
    scrollController.animateTo(
      index * scrollDistance,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  bool updateShouldNotify(ScrollControllerQuery oldWidget) =>
      scrollController != oldWidget.scrollController;
}
