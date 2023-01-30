import 'package:flutter/material.dart';

class HomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius: 0.25 * constraints.maxWidth,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius: (0.25 * constraints.maxWidth) - 10,
          foregroundImage: AssetImage('profile.jpg'),
        ),
      ),
    );
  }
}
