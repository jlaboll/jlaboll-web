import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppScreen extends StatelessWidget {
  AppScreen({required this.mobileChild, required this.desktopChild});

  final Widget mobileChild;
  final Widget desktopChild;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return ResponsiveScaledBox(
        width: 450,
        child: mobileChild,
      );
    }
    return ResponsiveScaledBox(
      width: 1080,
      child: desktopChild,
    );
  }
}
