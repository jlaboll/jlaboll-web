import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsivePaddingQuery extends InheritedWidget {
  ResponsivePaddingQuery({
    required super.child,
    required this.paddingMap,
  });

  final Map<String, ResponsiveValue<double>> paddingMap;

  static ResponsivePaddingQuery? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ResponsivePaddingQuery>();
  }

  static ResponsivePaddingQuery of(BuildContext context) {
    final ResponsivePaddingQuery? inheritedWdj = maybeOf(context);

    if (inheritedWdj != null) return inheritedWdj;

    throw FlutterError.fromParts(
      <DiagnosticsNode>[
        ErrorSummary(
            'ResponsivePaddingQuery.of() called with a context that does not contain ResponsivePaddingQuery.'),
        ErrorDescription(
            'No ResponsivePaddingQuery ancestor could be found starting from the context that was passed '
            'to ResponsivePaddingQuery.of(). Place a ResponsivePaddingQuery at the root of the app.'),
        context.describeElement('The context used was')
      ],
    );
  }

  static ResponsiveValue<double> responsiveValueOf(
      BuildContext context, String mapKey) {
    final ResponsivePaddingQuery? inheritedWdj =
        ResponsivePaddingQuery.of(context);
    final ResponsiveValue<double>? inheritedResponsiveValue =
        inheritedWdj != null && inheritedWdj.paddingMap.containsKey(mapKey)
            ? inheritedWdj.paddingMap[mapKey]
            : inheritedWdj?.paddingMap.entries.first.value;

    if (inheritedWdj != null && inheritedResponsiveValue != null)
      return inheritedResponsiveValue;

    throw FlutterError.fromParts(
      <DiagnosticsNode>[
        ErrorSummary(
            'ResponsivePaddingQuery.responsiveValueOf() called with a context that does not contain ResponsivePaddingQuery.'),
        ErrorDescription(
            'No ResponsivePaddingQuery ancestor could be found starting from the context that was passed '
            'to ResponsivePaddingQuery.responsiveValueOf(). Place a ResponsivePaddingQuery at the root of the app.'),
        context.describeElement('The context used was')
      ],
    );
  }

  static double padding(BuildContext context, String mapKey) {
    final double? padding =
        ResponsivePaddingQuery.responsiveValueOf(context, mapKey).value;
    if (padding != null) return padding;
    return 0;
  }

  @override
  bool updateShouldNotify(covariant ResponsivePaddingQuery oldWidget) {
    return paddingMap != oldWidget.paddingMap;
  }
}
