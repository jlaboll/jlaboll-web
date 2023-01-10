import 'package:flutter/material.dart';

import '../helpers/constants/layout_constants.dart';
import '../helpers/constants/my_constants.dart';
import '../helpers/constants/object_constants.dart';
import 'nav_bar_item.dart';

// ignore: must_be_immutable
class SmallScreenNavBar extends StatelessWidget {
  SmallScreenNavBar(this.controller);

  ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: smallScreenToolbarHeight,
      width: double.infinity,
      color: Colors.grey,
      alignment: Alignment.bottomCenter,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FittedBox(
              child: Row(
                children: <Widget>[
                  for (int i = 0; i < myPages.length; i++)
                    NavBarItem(
                        title: myPages[i],
                        onTap: () => controller.animateTo(
                            i * bodyHeight(context),
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease),
                        color: Colors.white),
                  for (int i = 0; i < myLinks.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Material(
                        color: Colors.grey,
                        child: InkWell(
                          onTap: () {
                            launcher.launchURL(myLinks[i]['URL']!);
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: FadeInImage(
                                placeholder: const AssetImage('spinner.gif'),
                                image: NetworkImage(myLinks[i]['iconURL']!)),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
