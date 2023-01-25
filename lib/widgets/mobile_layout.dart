import 'package:flutter/material.dart';

import '../screens/abstract_screen.dart';

// ignore: must_be_immutable
class MobileLayout extends StatelessWidget {
  MobileLayout(this.controller, this.screens, this.links);

  ScrollController controller;
  List<AbstractScreen> screens;
  List<Map<String, String>> links;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: FloatingActionButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Icon(Icons.view_headline),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              for (int i = 1; i < screens.length; i++)
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    title: Text(screens[i].title),
                    onTap: () => controller.animateTo(
                        i * MediaQuery.of(context).size.height,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease),
                  ),
                )
            ],
          ),
        ),
        body: ListView(
          controller: controller,
          children: screens,
        ));
  }
}
