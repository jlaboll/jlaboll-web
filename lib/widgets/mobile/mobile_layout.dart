import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/screen_item.dart';
import 'package:jlaboll_web/widgets/mobile/mobile_app_bar.dart';

// ignore: must_be_immutable
class MobileLayout extends StatelessWidget {
  MobileLayout({required this.controller, required this.screens});

  ScrollController controller;
  List<ScreenItem> screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileAppBar(),
      drawer: Builder(
        builder: (BuildContext context) => Drawer(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shadowColor: Theme.of(context).colorScheme.shadow,
          child: ListView(
            children: List.generate(
              screens.length,
              (index) => Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  iconColor: Theme.of(context).colorScheme.onPrimary,
                  textColor: Theme.of(context).colorScheme.onPrimary,
                  leading: Icon(screens[index].icon),
                  title: Text(screens[index].title),
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                    controller.animateTo(
                        index * MediaQuery.of(context).size.height,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListView(
            controller: controller,
            itemExtent: MediaQuery.of(context).size.height - kToolbarHeight,
            children:
                List.generate(screens.length, (index) => screens[index].child),
          ),
        ),
      ),
    );
  }
}
