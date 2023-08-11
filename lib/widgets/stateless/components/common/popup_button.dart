import 'package:flutter/material.dart';

import '../../../../classes/simple_responsive_value.dart';
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
    double padding = SimpleResponsiveValue<double>(context, 3, 4, 5, 7).value;

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
