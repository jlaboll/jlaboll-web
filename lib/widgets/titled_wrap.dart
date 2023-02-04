import 'package:flutter/material.dart';

class TitledWrap extends StatelessWidget {
  const TitledWrap(
      {required this.title,
      required this.titleFontSize,
      required this.children,
      this.titleColor,
      this.titleDecorationColor});

  final String title;
  final double titleFontSize;
  final List<Widget> children;
  final Color? titleColor;
  final Color? titleDecorationColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              textBaseline: TextBaseline.ideographic,
              fontWeight: FontWeight.w600,
              fontSize: titleFontSize,
              color: titleColor != null
                  ? titleColor
                  : Theme.of(context).colorScheme.onBackground,
              decoration: TextDecoration.underline,
              decorationColor: titleDecorationColor != null
                  ? titleDecorationColor
                  : Theme.of(context).colorScheme.tertiary,
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 2),
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 10,
          children: children,
        ),
      ],
    );
  }
}
