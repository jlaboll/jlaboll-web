import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

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
    double titleFontSize = 0;
    double subTitleFontSize = 0;
    double bodyFontSize = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        titleFontSize = 20;
        subTitleFontSize = 15;
        bodyFontSize = 10;
        break;
      case TABLET:
        titleFontSize = 25;
        subTitleFontSize = 17;
        bodyFontSize = 12;
        break;
      case DESKTOP:
        titleFontSize = 30;
        subTitleFontSize = 20;
        bodyFontSize = 15;
        break;
      default:
        titleFontSize = 35;
        subTitleFontSize = 22;
        bodyFontSize = 18;
        break;
    }

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
