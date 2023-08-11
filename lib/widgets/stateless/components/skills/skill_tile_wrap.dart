import 'package:flutter/material.dart';
import 'package:jlaboll_web/classes/simple_responsive_value.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';

class CSSkillTileWrap extends StatelessWidget {
  CSSkillTileWrap({required this.title, required this.tileChildrenList});

  final String title;
  final List<Widget> tileChildrenList;

  @override
  Widget build(BuildContext context) {
    double padding =
        SimpleResponsiveValue<double>(context, 8, 10, 12, 14).value;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CAAppText(
          type: CAAppTextStyle.SUBTITLE,
          text: title,
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: padding,
          runSpacing: padding,
          children: tileChildrenList,
        )
      ],
    );
  }
}
