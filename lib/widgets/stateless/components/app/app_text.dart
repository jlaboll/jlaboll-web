import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../classes/simple_responsive_value.dart';

enum CAAppTextStyle {
  TITLE,
  TITLE_SECONDARY,
  SUBTITLE,
  SUBTITLE_SECONDARY,
  BODY,
  BODY_SECONDARY
}

class CAAppText extends StatelessWidget {
  final CAAppTextStyle type;
  final String text;
  final bool shouldBold;
  final bool shouldDecorate;

  const CAAppText(
      {required this.type,
      required this.text,
      this.shouldBold = false,
      this.shouldDecorate = false});

  @override
  Widget build(BuildContext context) {
    double titleFontSize =
        SimpleResponsiveValue<double>(context, 22, 27, 32, 37).value;
    double subTitleFontSize =
        SimpleResponsiveValue<double>(context, 17, 19, 22, 24).value;
    double bodyFontSize =
        SimpleResponsiveValue<double>(context, 12, 14, 17, 20).value;

    switch (type) {
      case CAAppTextStyle.TITLE:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: titleFontSize,
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w300,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
      case CAAppTextStyle.TITLE_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: titleFontSize,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w300,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
      case CAAppTextStyle.SUBTITLE:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: subTitleFontSize,
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w400,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
      case CAAppTextStyle.SUBTITLE_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: subTitleFontSize,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w400,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
      case CAAppTextStyle.BODY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: bodyFontSize,
                color: Theme.of(context).colorScheme.onSurface,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w600,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
      case CAAppTextStyle.BODY_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: bodyFontSize,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: shouldBold ? FontWeight.bold : FontWeight.w600,
                decorationThickness: shouldDecorate ? 2 : null,
                decorationColor: shouldDecorate
                    ? Theme.of(context).colorScheme.secondary
                    : null,
                decorationStyle:
                    shouldDecorate ? TextDecorationStyle.solid : null,
                decoration: shouldDecorate ? TextDecoration.underline : null,
              ),
            ),
          ),
        );
    }
  }
}
