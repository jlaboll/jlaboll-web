import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';

class DesktopProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: 1080,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Container(),
      ),
    );
  }
}
