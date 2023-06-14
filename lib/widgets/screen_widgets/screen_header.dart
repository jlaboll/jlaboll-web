import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: _buildTextStyle(30, Theme.of(context).colorScheme),
    );
  }

  TextStyle _buildTextStyle(double fontSize, ColorScheme colorScheme) =>
      TextStyle(
        textBaseline: TextBaseline.ideographic,
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: colorScheme.onBackground,
        decoration: TextDecoration.underline,
        decorationColor: colorScheme.tertiary,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 2,
      );
}
