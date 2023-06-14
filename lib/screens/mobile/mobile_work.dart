import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/work_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../widgets/screen_widgets/screen_header.dart';

class MobileWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveScaledBox(
      width: 1080,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ScreenHeader('Work Experience'),
            WorkCard(
              positionTitle: 'Full Stack Developer',
              companyName: 'Suran Systems Inc.',
              companyLogoUrl:
                  NetworkImage('https://cdn.hedgehogcode.dev/suran.jpg'),
              companyWebsite: 'https://www.suran.com/',
              workResponsibilities: <String>['Stuff'],
            ),
          ],
        ),
      ),
    );
  }
}
