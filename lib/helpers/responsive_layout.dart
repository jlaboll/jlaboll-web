import 'package:flutter/material.dart';

import 'constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  // ignore: sort_constructors_first
  const ResponsiveLayout(
      {required this.largeScreen,
      required Key key,
      required this.mediumScreen,
      required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenMaxWidth;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenMaxWidth &&
        MediaQuery.of(context).size.width < mediumScreenMaxWidth;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenMaxWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        if (constraints.maxWidth >= mediumScreenMaxWidth) {
          return largeScreen;
        } else if (constraints.maxWidth >= smallScreenMaxWidth) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
