import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CSSkillTileWrap extends StatelessWidget {
  CSSkillTileWrap({required this.title, required this.tileChildrenLists});

  final String title;
  final List<List<Widget>> tileChildrenLists;

  @override
  Widget build(BuildContext context) {
    double padding = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 8;
        break;
      case TABLET:
        padding = 10;
        break;
      case DESKTOP:
        padding = 12;
        break;
      default:
        padding = 14;
        break;
    }
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
              spacing: padding,
              runSpacing: padding,
              children: tileChildrenLists[index - 1],
            );
          }
        },
      ),
    );
  }
}
