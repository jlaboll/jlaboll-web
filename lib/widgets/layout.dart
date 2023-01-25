import 'package:flutter/material.dart';
import 'package:jlaboll_web/screens/abstract_screen.dart';

import '../helpers/helper_methods.dart';
import '../helpers/my_colors.dart';

// ignore: must_be_immutable
class Layout extends StatelessWidget {
  Layout(this.controller, this.screens, this.links);

  ScrollController controller;
  List<AbstractScreen> screens;
  List<Map<String, String>> links;

  Size get preferredSize => const Size.fromWidth(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scrollbar(
            controller: controller,
            child: Container(
              margin: const EdgeInsets.only(
                  left: kToolbarHeight, right: kToolbarHeight),
              child: ListView(
                controller: controller,
                children: screens,
              ),
            ),
          ),
          _leftToolbar(context),
          _rightToolbar(context),
        ],
      ),
    );
  }

  Widget _leftToolbar(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          width: kToolbarHeight,
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
                for (int i = 0; i < screens.length; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => controller.animateTo(
                              i * MediaQuery.of(context).size.height,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease),
                          child: Text(screens[i].title),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _rightToolbar(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          width: kToolbarHeight,
          height: double.infinity,
          alignment: Alignment.centerRight,
          color: MyColors.secondary,
          child: FittedBox(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  for (int i = 0; i < links.length; i++)
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Material(
                          color: Theme.of(context).primaryColor,
                          child: InkWell(
                              onTap: () {
                                launcher.launchURL(links[i]['URL']!);
                              },
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child: FadeInImage(
                                  placeholder: const AssetImage('spinner.gif'),
                                  image: NetworkImage(links[i]['iconURL']!),
                                ),
                              )),
                        ))
                ]),
          ),
        ),
      ),
    );
  }
}
