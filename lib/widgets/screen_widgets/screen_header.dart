import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/responsive_layout.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      maxSmallWidth: 250,
      maxMediumWidth: 500,
      smallChild: Text(
        title,
        style: _buildTextStyle(15, Theme.of(context).colorScheme),
      ),
      mediumChild: Text(
        title,
        style: _buildTextStyle(20, Theme.of(context).colorScheme),
      ),
      largeChild: Text(
        title,
        style: _buildTextStyle(30, Theme.of(context).colorScheme),
      ),
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
