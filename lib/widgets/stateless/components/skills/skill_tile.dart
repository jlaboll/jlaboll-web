import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/url_launcher_query.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/tile.dart';

class CSSkillTile extends StatelessWidget {
  CSSkillTile({required this.skillIconUrl, required this.skillWebUrl});

  final String skillIconUrl;
  final String skillWebUrl;

  @override
  Widget build(BuildContext context) {
    return CCTile(
      onPressed: () => UrlLauncherQuery.of(context).launchURL(skillWebUrl),
      imageUrl: skillIconUrl,
    );
  }
}
