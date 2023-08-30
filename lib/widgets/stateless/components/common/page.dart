import 'package:flutter/material.dart';

import '../../../inherited/responsive_padding_query.dart';

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
              ResponsivePaddingQuery.padding(context, "REGULAR"),
            ),
            child: content,
          ),
        );
      },
    );
  }
}
