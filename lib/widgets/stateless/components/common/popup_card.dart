import 'package:flutter/material.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../../classes/rounded_rectangle.dart';
import '../../../inherited/responsive_padding_query.dart';
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
    EdgeInsetsGeometry padding = EdgeInsets.only(
      top: ResponsivePaddingQuery.padding(context, "REGULAR"),
      left: ResponsivePaddingQuery.padding(context, "LARGE"),
      right: ResponsivePaddingQuery.padding(context, "LARGE"),
      bottom: ResponsivePaddingQuery.padding(context, "SMALL"),
    );

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
            titlePadding: padding,
            children: popupChildren,
          );
        },
      ),
      child: child,
    );
  }
}
