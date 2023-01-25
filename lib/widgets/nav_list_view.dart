import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/responsive_layout.dart';

// ignore: must_be_immutable
class NavListView extends StatelessWidget {
  NavListView(this.controller);
  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveLayout.isSmallScreen(context) ? 5 : 20,
        vertical: ResponsiveLayout.isSmallScreen(context) ? 0 : 10,
      ),
      children: <Widget>[
        // for (int i = 0; i < myPages.length; i++)
        //   _navItem(
        //       context, _navTap(context, i), MyColors.secondary_neon, myPages[i])
      ],
    );
  }

  Function() _navTap(BuildContext context, int index) {
    return () => controller.animateTo(
        index * MediaQuery.of(context).size.height,
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease);
  }

  // Widget _navItem(
  //     BuildContext context, Function() onTap, Color color, String title) {
  //   return Center(
  //       child: MouseRegion(
  //     cursor: SystemMouseCursors.click,
  //     child: GestureDetector(
  //         onTap: onTap,
  //         child: LayoutBuilder(
  //           builder: (BuildContext context, BoxConstraints constraints) {
  //             if (constraints.maxWidth <= smallScreenMaxWidth) {
  //               return _styledText(title, color, 10);
  //             } else {
  //               return RotatedBox(
  //                 quarterTurns: 3,
  //                 child: _styledText(title, color, 15),
  //               );
  //             }
  //           },
  //         )),
  //   ));
  // }
  Widget _navItem(
      BuildContext context, Function() onTap, Color color, String title) {
    return ListTile(
        onTap: onTap,
        leading: const Icon(Icons.home_filled),
        title: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= smallScreenMaxWidth) {
              return _styledText(title, color, 10);
            } else {
              return RotatedBox(
                quarterTurns: 3,
                child: _styledText(title, color, 15),
              );
            }
          },
        ));
  }

  Widget _styledText(String title, Color color, double fontSize) {
    return Text(title,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.w600, color: color));
  }
}
