import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../../classes/rounded_rectangle.dart';
import '../app/app_text.dart';

class CCPopupCard extends StatelessWidget {
  CCPopupCard(
      {required this.child,
      required this.popupTitle,
      required this.popupChildren});

  final Widget child;
  final String popupTitle;
  final List<Widget> popupChildren;

  @override
  Widget build(BuildContext context) {
    double padding = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 3;
        break;
      case TABLET:
        padding = 4;
        break;
      case DESKTOP:
        padding = 5;
        break;
      default:
        padding = 7;
        break;
    }

    return FilledButton(
      style: ButtonStyle(
        shape: RoundedRectangle(),
        backgroundColor: OnPressOpacity(
          colorValue:
              Theme.of(context).colorScheme.surfaceVariant.withAlpha(127).value,
          opacity: 0.2,
        ),
      ),
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Center(
              child: CAAppText(
                type: CAAppTextStyle.TITLE,
                text: popupTitle,
                shouldDecorate: true,
              ),
            ),
            titlePadding: EdgeInsets.only(
                top: padding * 2,
                left: padding * 4,
                right: padding * 4,
                bottom: padding),
            children: popupChildren,
          );
        },
      ),
      child: child,
    );
  }
}
