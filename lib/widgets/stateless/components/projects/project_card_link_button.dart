import 'package:flutter/material.dart';

import '../../../inherited/responsive_padding_query.dart';
import '../../../inherited/url_launcher_query.dart';

class CPProjectCardLinkButton extends StatelessWidget {
  CPProjectCardLinkButton({required this.icon, required this.websiteLink});

  final IconData icon;
  final String websiteLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        ResponsivePaddingQuery.padding(context, "SMALLEST"),
      ),
      child: OutlinedButton(
        style: ButtonStyle(
          mouseCursor: MaterialStateProperty.resolveWith<MouseCursor?>(
              (states) =>
                  websiteLink.isEmpty ? SystemMouseCursors.basic : null),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (websiteLink.isEmpty) {
                return Theme.of(context)
                    .colorScheme
                    .surfaceVariant
                    .withAlpha(0);
              }
              return null;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.pressed) &&
                  !websiteLink.isEmpty) {
                return Theme.of(context).colorScheme.tertiary.withAlpha(127);
              }
              return null;
            },
          ),
        ),
        onPressed: () => websiteLink.isEmpty
            ? null
            : UrlLauncherQuery.of(context).launchURL(websiteLink),
        child: Icon(
          icon,
          color: websiteLink.isEmpty
              ? Theme.of(context).colorScheme.surfaceVariant
              : Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
