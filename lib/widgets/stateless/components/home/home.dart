import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CHHome extends StatelessWidget {
  CHHome(
      {required this.verticalHomeChildren,
      required this.horizontalHomeChildren});

  final List<Widget> verticalHomeChildren;
  final List<Widget> horizontalHomeChildren;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: horizontalHomeChildren,
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: verticalHomeChildren,
      );
    }
  }
}
