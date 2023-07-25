import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../app/app_text.dart';

class CCPopupButton extends StatelessWidget {
  CCPopupButton(
      {required this.buttonText,
      required this.popupTitle,
      required this.popupChildren});

  final String buttonText;
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

    return ElevatedButton(
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
      child: Text(buttonText),
    );
  }
}
