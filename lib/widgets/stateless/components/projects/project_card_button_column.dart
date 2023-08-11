import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/project_card_link_button.dart';

class CPProjectCardButtonColumn extends StatelessWidget {
  CPProjectCardButtonColumn({required this.demoUrl, required this.repoUrl});

  final String repoUrl;
  final String demoUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CPProjectCardLinkButton(
          icon: Icons.open_in_browser,
          websiteLink: demoUrl,
        ),
        CPProjectCardLinkButton(
          icon: Icons.open_in_new,
          websiteLink: repoUrl,
        ),
      ],
    );
  }
}
