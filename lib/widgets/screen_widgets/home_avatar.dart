import 'package:flutter/material.dart';

class HomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius: _getRadiusForConstraints(constraints),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius: _getRadiusForConstraints(constraints) - 10,
          foregroundImage: AssetImage('profile.jpg'),
        ),
      ),
    );
  }

  double _getRadiusForConstraints(BoxConstraints constraints) {
    double scaledWidth = 0.30 * constraints.maxWidth;
    double scaledHeight = 0.30 * constraints.maxHeight;

    if (scaledWidth >= scaledHeight) {
      return scaledHeight > 250 ? 250 : scaledHeight;
    } else {
      return scaledWidth > 250 ? 250 : scaledWidth;
    }
  }
}
