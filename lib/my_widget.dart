import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/helpers/constants.dart';
import 'package:jlaboll_web/widgets/desktop/desktop_layout.dart';
import 'package:jlaboll_web/widgets/mobile/mobile_layout.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'classes/screen_item.dart';

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
    screenList = screens;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (ResponsiveBreakpoints.of(context).largerThan(MOBILE)) {
            return DesktopLayout(
              controller: scrollController,
              screens: screenList,
            );
          } else {
            return MobileLayout(
              controller: scrollController,
              screens: screenList,
            );
          }
        },
      ),
    );
  }
}
