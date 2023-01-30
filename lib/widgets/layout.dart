import 'package:flutter/material.dart';

class Layout extends InheritedWidget {
  const Layout({
    super.key,
    required this.mobile,
    required super.child,
  });

  final bool mobile;

  static Layout? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Layout>();
  }

  static Layout of(BuildContext context) {
    final Layout? result = maybeOf(context);
    assert(result != null, 'No Layout found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Layout oldWidget) => mobile != oldWidget.mobile;
}
