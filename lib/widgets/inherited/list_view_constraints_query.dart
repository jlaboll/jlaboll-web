import 'package:flutter/material.dart';

class ListViewConstraintsQuery extends InheritedWidget {
  ListViewConstraintsQuery(
      {super.key,
      required this.width,
      required this.height,
      required this.padding,
      required super.child});

  final double width;
  final double height;
  final EdgeInsets padding;

  static ListViewConstraintsQuery? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ListViewConstraintsQuery>();
  }

  static ListViewConstraintsQuery of(BuildContext context) {
    final ListViewConstraintsQuery? result = maybeOf(context);
    assert(result != null, 'No ScrollControllerQuery found in context');
    return context
        .dependOnInheritedWidgetOfExactType<ListViewConstraintsQuery>()!;
  }

  Widget getListView(List<Widget> children, ScrollController controller) {
    return Padding(
      padding: padding,
      child: ListView(
        controller: controller,
        itemExtent: height,
        children: children,
      ),
    );
  }

  @override
  bool updateShouldNotify(ListViewConstraintsQuery oldWidget) =>
      width != oldWidget.width ||
      height != oldWidget.height ||
      padding != oldWidget.padding;
}
