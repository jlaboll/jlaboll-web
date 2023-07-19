import 'package:flutter/material.dart';

import '../app/app_text.dart';

class CCTitledView extends StatelessWidget {
  CCTitledView({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CAAppText(
          type: CAAppTextStyle.TITLE,
          text: title,
          shouldDecorate: true,
          shouldBold: true,
        ),
        Expanded(child: child),
      ],
    );
  }
}
