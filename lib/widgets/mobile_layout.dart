import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/screen_item.dart';

// ignore: must_be_immutable
class MobileLayout extends StatelessWidget {
  MobileLayout({required this.controller, required this.screens});

  ScrollController controller;
  List<ScreenItem> screens;

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
              for (int i = 0; i < screens.length; i++)
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(screens[i].icon),
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
          children: _buildListViewChildren(),
        ));
  }

  List<Widget> _buildListViewChildren() {
    List<Widget> children = [];
    for (var screen in screens) children.add(screen.child);
    return children;
  }
}
