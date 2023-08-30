import 'package:flutter/material.dart';

import '../../../inherited/responsive_padding_query.dart';
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
    EdgeInsetsGeometry padding = EdgeInsets.only(
      top: ResponsivePaddingQuery.padding(context, "REGULAR"),
      left: ResponsivePaddingQuery.padding(context, "LARGE"),
      right: ResponsivePaddingQuery.padding(context, "LARGE"),
      bottom: ResponsivePaddingQuery.padding(context, "SMALL"),
    );

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
            titlePadding: padding,
            children: popupChildren,
          );
        },
      ),
      child: Text(buttonText),
    );
  }
}
