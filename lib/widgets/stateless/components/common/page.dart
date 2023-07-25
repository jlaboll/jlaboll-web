import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CCPage extends StatelessWidget {
  CCPage({required this.navButton, required this.content});

  final Widget navButton;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    double padding = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 8;
        break;
      case TABLET:
        padding = 10;
        break;
      case DESKTOP:
        padding = 12;
        break;
      default:
        padding = 20;
        break;
    }

    return Padding(
      padding: EdgeInsets.all(padding),
      child: content,
    );
  }
}
