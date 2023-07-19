import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CAAppRightSidebar extends StatelessWidget {
  CAAppRightSidebar({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ResponsiveScaledBox(
        width: kToolbarHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
