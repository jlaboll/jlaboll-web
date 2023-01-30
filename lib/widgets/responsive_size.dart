import 'package:flutter/material.dart';

class ResponsiveSize extends StatelessWidget {
  const ResponsiveSize(
      {required this.child, this.widthRatio, this.heightRatio});
  final Widget child;
  final double? widthRatio;
  final double? heightRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (widthRatio == null && heightRatio == null) {
          return child;
        } else if (widthRatio == null) {
          return SizedBox(
            height: constraints.maxHeight * heightRatio!,
            child: child,
          );
        } else if (heightRatio == null) {
          return SizedBox(
            width: constraints.maxWidth * widthRatio!,
            child: child,
          );
        } else {
          return SizedBox(
            height: constraints.maxHeight * heightRatio!,
            width: constraints.maxWidth * widthRatio!,
            child: child,
          );
        }
      },
    );
  }
}
