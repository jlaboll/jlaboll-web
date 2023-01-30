import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/screen_item.dart';
import 'package:jlaboll_web/widgets/left_toolbar.dart';
import 'package:jlaboll_web/widgets/right_toolbar.dart';

// ignore: must_be_immutable
class DesktopLayout extends StatelessWidget {
  DesktopLayout({required this.controller, required this.screens});

  List<ScreenItem> screens;
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: kToolbarHeight),
            child: ListView(
              controller: controller,
              itemExtent: MediaQuery.of(context).size.height,
              children: List.generate(
                  screens.length, (index) => screens[index].child),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: kToolbarHeight,
              child: LeftToolbar(controller, screens),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: kToolbarHeight,
              child: RightToolbar(),
            ),
          ),
        ],
      ),
    );
  }
}
