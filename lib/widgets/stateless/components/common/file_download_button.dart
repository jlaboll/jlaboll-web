import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/url_launcher_query.dart';

class CCFileDownloadButton extends StatelessWidget {
  CCFileDownloadButton({required this.buttonText, required this.fileUrl});

  final String buttonText;
  final String fileUrl;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => UrlLauncherQuery.of(context).download(fileUrl),
      child: Text(buttonText),
    );
  }
}
