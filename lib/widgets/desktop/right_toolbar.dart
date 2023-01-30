import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

import '../../helpers/helper_methods.dart';

class RightToolbar extends StatelessWidget {
  static List<Map<String, String>> myLinks = <Map<String, String>>[
    {
      'URL': 'https://github.com/jlaboll',
      'iconURL': 'https://img.icons8.com/fluent/50/000000/github.png'
    },
    {
      'URL': 'https://www.linkedin.com/in/jasen-labolle-7a57221a0',
      'iconURL': 'https://img.icons8.com/fluent/50/000000/linkedin.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Spacer(),
        for (int i = 0; i < myLinks.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: InkWell(
              onTap: () {
                launchURL(myLinks[i]['URL']!);
              },
              child: SizedBox(
                height: 30,
                width: 30,
                child: ImageLoadingAnimator(
                  imageProvider: NetworkImage(myLinks[i]['iconURL']!),
                ),
              ),
            ),
          ),
      ],
    );
  }
}