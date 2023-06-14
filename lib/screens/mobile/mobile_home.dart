import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/components/app_text.dart';
import 'package:jlaboll_web/widgets/screen_widgets/home_avatar.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';

class MobileHome extends StatelessWidget {
  static String homeTitle1 = 'Hey! I am';
  static String homeTitle2 = 'Jasen LaBolle';
  static String homeTitle3 = 'Full Stack Developer';

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: 1080,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppText(
              type: AppTextStyle.SUBTITLE_SECONDARY,
              text: homeTitle1,
              shouldBold: true,
            ),
            AppText(
              type: AppTextStyle.TITLE,
              text: homeTitle2,
              shouldBold: true,
            ),
            AppText(
              type: AppTextStyle.SUBTITLE,
              text: homeTitle3,
              shouldBold: true,
            ),
            Padding(padding: EdgeInsets.all(10)),
            HomeAvatar(),
          ],
        ),
      ),
    );
  }
}
