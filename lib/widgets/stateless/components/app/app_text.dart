import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    switch (type) {
      case CAAppTextStyle.TITLE:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: 30,
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
                fontSize: 30,
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
                fontSize: 20,
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
                fontSize: 20,
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
                fontSize: 15,
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
                fontSize: 15,
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
