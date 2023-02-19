import 'package:flutter/material.dart';

import '../helpers/responsive_double.dart';

class ScreenContainer extends StatelessWidget {
  final Widget? child;

  const ScreenContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ResponsiveDouble(context, 25).value),
      child: child,
    );
  }
}
