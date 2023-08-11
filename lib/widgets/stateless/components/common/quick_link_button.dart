import 'package:flutter/material.dart';
import 'package:jlaboll_web/classes/simple_responsive_value.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';

import '../../../inherited/url_launcher_query.dart';

class CCQuickLinkButton extends StatelessWidget {
  CCQuickLinkButton({required this.url, required this.iconUrl});

  final String url;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => UrlLauncherQuery.of(context).launchURL(url),
        child: SizedBox.square(
          dimension:
              SimpleResponsiveValue<double>(context, 30, 40, 50, 70).value,
          child: CCImageAnimator(
            provider: NetworkImage(iconUrl),
          ),
        ),
      ),
    );
  }
}
