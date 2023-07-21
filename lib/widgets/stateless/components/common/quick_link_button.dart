import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../inherited/url_launcher_query.dart';

class CCQuickLinkButton extends StatelessWidget {
  CCQuickLinkButton({required this.url, required this.iconUrl});

  final String url;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    double size = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        size = 30;
        break;
      case TABLET:
        size = 40;
        break;
      case DESKTOP:
        size = 50;
        break;
      default:
        size = 70;
        break;
    }

    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => UrlLauncherQuery.of(context).launchURL(url),
        child: SizedBox(
          height: size,
          width: size,
          child: CCImageAnimator(
            provider: NetworkImage(iconUrl),
          ),
        ),
      ),
    );
  }
}
