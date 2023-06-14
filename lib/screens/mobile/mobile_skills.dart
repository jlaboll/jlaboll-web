import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/helpers/helpers.dart';
import 'package:jlaboll_web/widgets/screen_widgets/screen_header.dart';
import 'package:jlaboll_web/widgets/skill_button.dart';
import 'package:jlaboll_web/widgets/titled_wrap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MobileSkills extends StatelessWidget {
  static List<Map<String, String>> languageLinks = [];

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: 1080,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ScreenHeader('Skills')],
            ),
            TitledWrap(
              title: 'Professional Skills',
              titleFontSize: 25,
              children: List.generate(
                professionalSkillLinks.length,
                (index) => ConstrainedBox(
                  constraints: BoxConstraints.tight(
                    Size.square(75),
                  ),
                  child: SkillButton(
                    link: professionalSkillLinks[index]['link']!,
                    assetLocation: professionalSkillLinks[index]
                        ['asset_location']!,
                  ),
                ),
              ),
            ),
            TitledWrap(
              title: 'Other Skills',
              titleFontSize: 25,
              children: List.generate(
                personalSkillLinks.length,
                (index) => ConstrainedBox(
                  constraints: BoxConstraints.tight(
                    Size.square(75),
                  ),
                  child: SkillButton(
                    link: personalSkillLinks[index]['link']!,
                    assetLocation: personalSkillLinks[index]['asset_location']!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
