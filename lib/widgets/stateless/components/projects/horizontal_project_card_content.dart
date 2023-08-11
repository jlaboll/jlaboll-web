import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/padded_network_image_from_size.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/project_card_button_column.dart';

import '../../../../classes/simple_responsive_value.dart';
import '../app/app_text.dart';

class CPHorizontalProjectCardContent extends StatelessWidget {
  CPHorizontalProjectCardContent(
      {required this.title,
      required this.language,
      required this.demoScreenshotLink,
      required this.demoLink,
      required this.repoLink});

  final String title;
  final String language;
  final String demoScreenshotLink;
  final String demoLink;
  final String repoLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CCPaddedNetworkImageFromSize(
          imageSize: SimpleResponsiveValue<Size>(
            context,
            Size(150, 84),
            Size(180, 100),
            Size(210, 118),
            Size(240, 135),
          ).value,
          imageUrl: demoScreenshotLink,
          padding: SimpleResponsiveValue<double>(context, 4, 5, 6, 7).value,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              SimpleResponsiveValue<double>(context, 4, 5, 6, 7).value,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CAAppText(
                  type: CAAppTextStyle.SUBTITLE,
                  text: title,
                ),
                CAAppText(
                  type: CAAppTextStyle.SUBTITLE_SECONDARY,
                  text: language,
                ),
              ],
            ),
          ),
        ),
        CPProjectCardButtonColumn(
          demoUrl: demoLink,
          repoUrl: repoLink,
        ),
      ],
    );
  }
}
