import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/popup_card.dart';

import '../../../../classes/simple_responsive_value.dart';
import '../app/app_text.dart';

class CCBulletListPopupCard extends StatelessWidget {
  CCBulletListPopupCard(
      {required this.popupTitle,
      required this.popupBulletedContent,
      required this.child});

  final String popupTitle;
  final List<String> popupBulletedContent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCPopupCard(
      popupTitle: popupTitle,
      popupChildren: List.generate(
        popupBulletedContent.length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                SimpleResponsiveValue<double>(context, 18, 22, 26, 30).value,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CAAppText(
                type: CAAppTextStyle.BODY,
                text: "\u2022",
              ), //bullet text
              SizedBox(
                width: 10,
              ), //space between bullet and text
              Expanded(
                child: CAAppText(
                  type: CAAppTextStyle.BODY,
                  text: popupBulletedContent[index],
                ), //text
              )
            ],
          ),
        ),
      ),
      child: child,
    );
  }
}
