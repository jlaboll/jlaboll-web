import 'package:flutter/material.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../../classes/rounded_rectangle.dart';
import '../../../../classes/simple_responsive_value.dart';
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
    double padding = SimpleResponsiveValue<double>(context, 3, 4, 5, 7).value;

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
