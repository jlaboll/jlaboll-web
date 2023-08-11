import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/bullet_list_popup_card.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/horizontal_project_card_content.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/vertical_project_card_content.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../inherited/responsive_padding_query.dart';

class CPProjectCard extends StatelessWidget {
  CPProjectCard(
      {required this.title,
      required this.language,
      required this.demoScreenshotLink,
      required this.demoLink,
      required this.repoLink,
      required this.aboutTitle,
      required this.about});

  final String title;
  final String language;
  final String demoScreenshotLink;
  final String demoLink;
  final String repoLink;
  final String aboutTitle;
  final List<String> about;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        ResponsivePaddingQuery.padding(context, "REGULAR"),
      ),
      child: CCBulletListPopupCard(
        popupTitle: aboutTitle,
        popupBulletedContent: about,
        child: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? CPHorizontalProjectCardContent(
                title: title,
                language: language,
                demoScreenshotLink: demoScreenshotLink,
                demoLink: demoLink,
                repoLink: repoLink,
              )
            : CPVerticalProjectCardContent(
                title: title,
                language: language,
                demoScreenshotLink: demoScreenshotLink,
                demoLink: demoLink,
                repoLink: repoLink,
              ),
      ),
    );
  }
}
