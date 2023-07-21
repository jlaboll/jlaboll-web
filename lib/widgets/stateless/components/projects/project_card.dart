import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

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
    double padding = 0;
    double imageSize;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 9;
        imageSize = 150;
        break;
      case TABLET:
        padding = 11;
        imageSize = 180;
        break;
      case DESKTOP:
        padding = 13;
        imageSize = 250;
        break;
      default:
        padding = 15;
        imageSize = 300;
        break;
    }

    return Padding(
      padding: EdgeInsets.all(padding),
      child: CCPopupCard(
        popupTitle: aboutTitle,
        popupChildren: List.generate(
          about.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: padding * 2),
            child: CAAppText(
              type: CAAppTextStyle.BODY,
              text: about[index],
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
                width: imageSize,
                child: CCImageAnimator(
                  provider: NetworkImage(demoScreenshotLink),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(padding / 2),
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
                  padding: EdgeInsets.all(padding / 4),
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
                          return null;
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
                  padding: EdgeInsets.all(padding / 4),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      mouseCursor:
                          MaterialStateProperty.resolveWith<MouseCursor?>(
                              (states) => repoLink.isEmpty
                                  ? SystemMouseCursors.basic
                                  : null),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) {
                          if (repoLink.isEmpty) {
                            return Theme.of(context)
                                .colorScheme
                                .surfaceVariant
                                .withAlpha(0);
                          }
                          return null;
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (states) {
                          if (states.contains(MaterialState.pressed) &&
                              !repoLink.isEmpty) {
                            return Theme.of(context)
                                .colorScheme
                                .tertiary
                                .withAlpha(127);
                          }
                          return null;
                        },
                      ),
                    ),
                    onPressed: () => repoLink.isEmpty
                        ? null
                        : UrlLauncherQuery.of(context).launchURL(repoLink),
                    child: Icon(
                      Icons.open_in_new,
                      color: repoLink.isEmpty
                          ? Theme.of(context).colorScheme.surfaceVariant
                          : Theme.of(context).colorScheme.tertiary,
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
