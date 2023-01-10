import 'package:flutter/material.dart';

import '../helpers/constants/layout_constants.dart';
import '../helpers/constants/my_constants.dart';
import 'nav_bar_item.dart';

// ignore: must_be_immutable
class LargeScreenNavBar extends StatelessWidget with PreferredSizeWidget {
  LargeScreenNavBar(this.controller);

  ScrollController controller;

  @override
  Size get preferredSize => const Size.fromWidth(largeScreenToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: Container(
          width: largeScreenToolbarHeight,
          height: double.infinity,
          alignment: Alignment.centerLeft,
          decoration:
              const BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
            BoxShadow(offset: Offset(0, 1), color: Colors.grey, blurRadius: 5)
          ]),
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                for (int i = 0; i < myPages.length; i++)
                  NavBarItem(
                      title: myPages[i],
                      onTap: () => controller.animateTo(i * bodyHeight(context),
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.ease),
                      color: Colors.black),
              ],
            ),
          ),
        ),
        preferredSize: preferredSize);
  }
}
