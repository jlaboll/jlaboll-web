import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';

class CSSkillTileWrap extends StatelessWidget {
  CSSkillTileWrap({required this.title, required this.tileChildrenLists});

  final String title;
  final List<List<Widget>> tileChildrenLists;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        tileChildrenLists.length + 1,
        (index) {
          if (index == 0) {
            return CAAppText(type: CAAppTextStyle.SUBTITLE, text: title);
          } else {
            return Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
              children: tileChildrenLists[index - 1],
            );
          }
        },
      ),
    );
  }
}
