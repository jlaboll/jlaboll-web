import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';

class GenericScreen extends StatelessWidget {
  GenericScreen({
    required this.navTitle,
    required this.icon,
    required this.mobileChild,
    required this.desktopChild,
    required this.mobilePadding,
    required this.desktopPadding,
    this.screenMainAxisAlignment = MainAxisAlignment.center,
    this.screenCrossAxisAlignment = CrossAxisAlignment.center,
  });

  final String navTitle;
  final IconData icon;

  final Widget mobileChild;
  final Widget desktopChild;

  final EdgeInsets mobilePadding;
  final EdgeInsets desktopPadding;

  final MainAxisAlignment screenMainAxisAlignment;
  final CrossAxisAlignment screenCrossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return ResponsiveScaledBox(
        width: 450,
        child: Padding(
          padding: mobilePadding,
          child: mobileChild,
        ),
      );
    }
    return ResponsiveScaledBox(
      width: 1080,
      child: Padding(
        padding: desktopPadding,
        child: desktopChild,
      ),
    );
  }
}
