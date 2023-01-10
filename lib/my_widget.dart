import 'package:flutter/material.dart';
import 'package:jlaboll_web/screens/about.dart';
import 'package:jlaboll_web/screens/home.dart';
import 'package:jlaboll_web/widgets/large_screen_nav_bar.dart';
import 'package:jlaboll_web/widgets/small_screen_nav_bar.dart';

import 'helpers/responsive_layout.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late ScrollController desktopController, mobileController;
  late List<Widget> pageList;

  @override
  void initState() {
    desktopController = ScrollController();
    mobileController = ScrollController();
    pageList = <Widget>[Home(), About()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: <Widget>[
          Scrollbar(
            controller: ResponsiveLayout.isSmallScreen(context)
                ? mobileController
                : desktopController,
            child: ResponsiveLayout.isLargeScreen(context) ||
                    ResponsiveLayout.isMediumScreen(context)
                ? desktopBody
                : mobileBody,
          ),
          if (ResponsiveLayout.isSmallScreen(context))
            Align(
              alignment: Alignment.bottomCenter,
              child: SmallScreenNavBar(mobileController),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: LargeScreenNavBar(desktopController),
            )
        ],
      ),
    ));
  }

  Widget get desktopBody => ListView(
        controller: desktopController,
        children: pageList,
      );

  Widget get mobileBody => Container(
        margin: const EdgeInsets.only(
          bottom: 35,
        ),
        child: ListView(
          controller: mobileController,
          children: pageList,
        ),
      );
}
