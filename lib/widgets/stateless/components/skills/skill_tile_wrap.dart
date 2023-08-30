import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/responsive_padding_query.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';

class CSSkillTileWrap extends StatelessWidget {
  CSSkillTileWrap({required this.title, required this.tileChildrenList});

  final String title;
  final List<Widget> tileChildrenList;

  @override
  Widget build(BuildContext context) {
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
          spacing: ResponsivePaddingQuery.padding(context, "REGULAR"),
          runSpacing: ResponsivePaddingQuery.padding(context, "REGULAR"),
          children: tileChildrenList,
        )
      ],
    );
  }
}
