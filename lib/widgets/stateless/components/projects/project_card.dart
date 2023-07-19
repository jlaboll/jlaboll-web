import 'package:flutter/material.dart';

import '../../../inherited/url_launcher_query.dart';
import '../app/app_text.dart';
import '../common/image_animator.dart';
import '../common/popup_card.dart';

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
      padding: EdgeInsets.all(12),
      child: CCPopupCard(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Center(
                child: CAAppText(
                  type: CAAppTextStyle.SUBTITLE,
                  text: aboutTitle,
                  shouldDecorate: true,
                ),
              ),
              titlePadding: EdgeInsets.only(top: 12, left: 24, right: 24),
              children: List.generate(
                  about.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CAAppText(
                            type: CAAppTextStyle.BODY, text: about[index]),
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
                child: CCImageAnimator(
                  provider: NetworkImage(demoScreenshotLink),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CAAppText(type: CAAppTextStyle.SUBTITLE, text: title),
                    CAAppText(
                        type: CAAppTextStyle.SUBTITLE_SECONDARY,
                        text: language),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
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
                        UrlLauncherQuery.of(context).launchURL(demoLink),
                    child: Icon(
                      Icons.open_in_browser,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
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
                        UrlLauncherQuery.of(context).launchURL(repoLink),
                    child: Icon(
                      Icons.open_in_new,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
