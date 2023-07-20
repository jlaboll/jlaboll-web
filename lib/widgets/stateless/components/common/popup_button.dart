import 'package:flutter/material.dart';

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
            titlePadding:
                EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 6),
            children: popupChildren,
          );
        },
      ),
      child: Text(buttonText),
    );
  }
}
