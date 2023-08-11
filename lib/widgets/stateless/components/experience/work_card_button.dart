import 'package:flutter/material.dart';

import '../../../inherited/url_launcher_query.dart';

class CEWorkCardWebsiteButton extends StatelessWidget {
  CEWorkCardWebsiteButton({required this.websiteUrl, required this.padding});

  final double padding;
  final String websiteUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return Theme.of(context).colorScheme.tertiary.withAlpha(127);
              }
              return Theme.of(context).colorScheme.tertiary.withAlpha(0);
            },
          ),
        ),
        onPressed: () => UrlLauncherQuery.of(context).launchURL(websiteUrl),
        child: Icon(
          Icons.open_in_browser,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
