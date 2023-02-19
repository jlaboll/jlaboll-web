import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/components/app_text.dart';
import 'package:jlaboll_web/packages/components/screen_container.dart';
import 'package:jlaboll_web/packages/helpers/constants.dart';

import '../packages/helpers/responsive_double.dart';
import '../widgets/layout.dart';

class About extends StatelessWidget {
  static List<String> aboutDetails = [
    'I am a Full-Stack Software Developer, graduated December 2020 with a B.S. of Computer Science, and have been working professionally since developing frontend, backend, and devops solutions.',
    'I have a passion for continuing to learn new technologies and solutions, and I am always excited and interested in expanding my skill set. In my professional career I have worked on desktop, mobile, and web frontend applications, as well as backend REST API\'s, and SQL databases.',
    'In my free time, I have been working on a bare metal, high availability, on-premises K8\'s deployment, and exploring Flutter as a single codebase, multi-platform application framework.',
    'I also am a huge fan of hedgehogs, and have a pet hedgehog named Penelope.',
  ];

  @override
  Widget build(BuildContext context) {
    if (Layout.of(context).mobile) {
      return ScreenContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _header(),
            _image(context),
            _expandedDetails(context),
          ],
        ),
      );
    }
    return ScreenContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _header(),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _image(context),
                  _expandedDetails(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return AppText(
      type: AppTextStyles.TITLE,
      text: 'About Me',
      shouldDecorate: true,
    );
  }

  Widget _image(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: ResponsiveDouble(context, 25).value),
      child: Image(
        image: AssetImage('hedgehog.png'),
        width: ResponsiveDouble(context, 225, mobileRatio: 0.33).value,
        height: ResponsiveDouble(context, 225, mobileRatio: 0.33).value,
      ),
    );
  }

  Widget _expandedDetails(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            aboutDetails.length + 1,
            (index) {
              if (index >= aboutDetails.length) {
                return _detailButtons(context);
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ResponsiveDouble(context, 10).value),
                  child: AppText(
                    type: AppTextStyles.BODY,
                    text: aboutDetails[index],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _detailButtons(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= MOBILE_BREAKPOINT) {
          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Contact Me'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  child: Text('Download Resume'),
                  onPressed: () {},
                ),
              ],
            ),
          );
        } else {
          return SizedBox(
            width: constraints.maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Contact Me'),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text('Download Resume'),
                  onPressed: () {},
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
