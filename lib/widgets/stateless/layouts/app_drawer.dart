import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LAppDrawer extends StatelessWidget {
  LAppDrawer(
      {required this.appBar,
      required this.drawer,
      required this.responsiveScaleWidth,
      required this.stackChildren});

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final double responsiveScaleWidth;
  final List<Widget> stackChildren;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ResponsiveScaledBox(
          width: responsiveScaleWidth,
          child: Stack(children: stackChildren),
        ),
      ),
    );
  }
}
