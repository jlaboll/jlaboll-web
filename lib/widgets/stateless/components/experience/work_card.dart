import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/popup_card.dart';

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
    return Padding(
      padding: EdgeInsets.all(12),
      child: CCPopupCard(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Center(
                child: CAAppText(
                  type: CAAppTextStyle.SUBTITLE,
                  text: detailsTitle,
                  shouldDecorate: true,
                ),
              ),
              titlePadding: EdgeInsets.only(top: 12, left: 24, right: 24),
              children: List.generate(
                  details.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CAAppText(
                            type: CAAppTextStyle.BODY, text: details[index]),
                      )),
            );
          },
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 250,
                height: 75,
                child: CCImageAnimator(provider: NetworkImage(imageUrl)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
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
              padding: EdgeInsets.all(5),
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
