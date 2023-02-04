import 'package:flutter/material.dart';
import 'package:jlaboll_web/screens/about.dart';
import 'package:jlaboll_web/screens/home.dart';
import 'package:jlaboll_web/screens/skills.dart';
import 'package:jlaboll_web/widgets/desktop/desktop_layout.dart';
import 'package:jlaboll_web/widgets/layout.dart';
import 'package:jlaboll_web/widgets/mobile/mobile_layout.dart';

import 'helpers/screen_item.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late ScrollController scrollController;
  late List<ScreenItem> screenList;

  @override
  void initState() {
    scrollController = ScrollController();
    screenList = <ScreenItem>[
      ScreenItem(
        title: 'Home',
        icon: Icons.home,
        child: Home(),
      ),
      ScreenItem(
        title: 'About',
        icon: Icons.info,
        child: About(),
      ),
      ScreenItem(
        title: 'Skills',
        icon: Icons.bolt,
        child: Skills(),
      ),
      // ScreenItem(
      //   title: 'Work',
      //   icon: Icons.work,
      //   child: Work(),
      // ),
      // ScreenItem(
      //   title: 'Projects',
      //   icon: Icons.code,
      //   child: Projects(),
      // ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 760) {
            return Layout(
              mobile: false,
              child: DesktopLayout(
                controller: scrollController,
                screens: screenList,
              ),
            );
          } else {
            return Layout(
              mobile: true,
              child: MobileLayout(
                controller: scrollController,
                screens: screenList,
              ),
            );
          }
        },
      ),
    );
  }
}
