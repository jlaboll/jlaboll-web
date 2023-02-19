import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/components/app_text.dart';
import 'package:jlaboll_web/widgets/screen_widgets/home_avatar.dart';

class Home extends StatelessWidget {
  static String homeTitle1 = 'Hey! I am';
  static String homeTitle2 = 'Jasen LaBolle';
  static String homeTitle3 = 'Full Stack Developer';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AppText(
          type: AppTextStyles.SUBTITLE_SECONDARY,
          text: homeTitle1,
          shouldBold: true,
        ),
        AppText(
          type: AppTextStyles.TITLE,
          text: homeTitle2,
          shouldBold: true,
        ),
        AppText(
          type: AppTextStyles.SUBTITLE,
          text: homeTitle3,
          shouldBold: true,
        ),
        Padding(padding: EdgeInsets.all(10)),
        HomeAvatar(),
      ],
    );
  }
}
