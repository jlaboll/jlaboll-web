import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/popup_card.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../inherited/url_launcher_query.dart';
import '../common/image_animator.dart';

class CEWorkCard extends StatelessWidget {
  CEWorkCard(
      {required this.imageUrl,
      required this.position,
      required this.company,
      required this.startDate,
      required this.endDate,
      required this.detailsTitle,
      required this.details,
      required this.websiteUrl});

  final String imageUrl;
  final String position;
  final String company;
  final String startDate;
  final String endDate;
  final String detailsTitle;
  final List<String> details;
  final String websiteUrl;

  @override
  Widget build(BuildContext context) {
    double padding = 0;
    Size imageSize;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 9;
        imageSize = Size(150, 50);
        break;
      case TABLET:
        padding = 11;
        imageSize = Size(180, 60);
        break;
      case DESKTOP:
        padding = 13;
        imageSize = Size(250, 75);
        break;
      default:
        padding = 15;
        imageSize = Size(300, 100);
        break;
    }

    return Padding(
      padding: EdgeInsets.all(padding),
      child: CCPopupCard(
        popupTitle: detailsTitle,
        popupChildren: List.generate(
          details.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: padding * 2),
            child: CAAppText(
              type: CAAppTextStyle.BODY,
              text: details[index],
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(padding / 2),
              child: SizedBox(
                width: imageSize.width,
                height: imageSize.height,
                child: CCImageAnimator(provider: NetworkImage(imageUrl)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(padding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CAAppText(type: CAAppTextStyle.SUBTITLE, text: position),
                    CAAppText(
                        type: CAAppTextStyle.SUBTITLE_SECONDARY, text: company),
                    CAAppText(
                        type: CAAppTextStyle.BODY,
                        text: startDate + ' - ' + endDate),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(padding / 4),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Theme.of(context)
                            .colorScheme
                            .tertiary
                            .withAlpha(127);
                      }
                      return Theme.of(context)
                          .colorScheme
                          .tertiary
                          .withAlpha(0);
                    },
                  ),
                ),
                onPressed: () =>
                    UrlLauncherQuery.of(context).launchURL(websiteUrl),
                child: Icon(
                  Icons.open_in_browser,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
