import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {required this.maxSmallWidth,
      required this.maxMediumWidth,
      required this.smallChild,
      required this.mediumChild,
      required this.largeChild});

  final double maxSmallWidth;
  final double maxMediumWidth;
  final Widget largeChild;
  final Widget mediumChild;
  final Widget smallChild;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= maxMediumWidth) {
          return largeChild;
        } else if (constraints.maxWidth >= maxSmallWidth) {
          return mediumChild;
        } else {
          return smallChild;
        }
      },
    );
  }
}
