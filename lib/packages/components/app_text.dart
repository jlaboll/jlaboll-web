import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlaboll_web/packages/helpers/responsive_double.dart';

enum AppTextStyles {
  TITLE,
  TITLE_SECONDARY,
  SUBTITLE,
  SUBTITLE_SECONDARY,
  BODY,
  BODY_SECONDARY
}

class AppText extends StatelessWidget {
  final AppTextStyles type;
  final String text;
  final bool shouldBold;
  final bool shouldDecorate;

  const AppText(
      {required this.type,
      required this.text,
      this.shouldBold = false,
      this.shouldDecorate = false});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppTextStyles.TITLE:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 30).value,
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
      case AppTextStyles.TITLE_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 30).value,
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
      case AppTextStyles.SUBTITLE:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 20).value,
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
      case AppTextStyles.SUBTITLE_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 20).value,
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
      case AppTextStyles.BODY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 15).value,
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
      case AppTextStyles.BODY_SECONDARY:
        return Container(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                fontSize: ResponsiveDouble(context, 15).value,
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
