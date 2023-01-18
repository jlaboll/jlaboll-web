import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/constants.dart';
import 'package:jlaboll_web/helpers/helper_methods.dart';

import '../helpers/my_colors.dart';
import 'nav_bar_item.dart';

// ignore: must_be_immutable
class MyNavBar extends StatelessWidget {
  MyNavBar(this.controller);
  ScrollController controller;

  Size get preferredSize => const Size.fromWidth(largeScreenToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        width: largeScreenToolbarHeight,
        height: double.infinity,
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          color: MyColors.primary,
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(0, 1), color: MyColors.black, blurRadius: 5),
          ],
        ),
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for (int i = 0; i < myPages.length; i++)
                Column(children: <Widget>[
                  NavBarItem(
                      title: myPages[i],
                      onTap: () => controller.animateTo(
                          i * MediaQuery.of(context).size.height,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.ease),
                      color: MyColors.white),
                  if (i + 1 < myPages.length) VertScaledBox(context)
                ]),
            ],
          ),
        ),
      ),
      preferredSize: preferredSize,
    );
  }
}
