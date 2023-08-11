import 'package:flutter/material.dart';

import '../../../../classes/simple_responsive_value.dart';

class CCPage extends StatelessWidget {
  CCPage({required this.navButton, required this.content});

  final Widget navButton;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Padding(
            padding: EdgeInsets.all(
              SimpleResponsiveValue<double>(context, 8, 10, 12, 20).value,
            ),
            child: content,
          ),
        );
      },
    );
  }
}
