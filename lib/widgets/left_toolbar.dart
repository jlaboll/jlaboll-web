import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/screen_item.dart';
import 'package:jlaboll_web/widgets/left_toolbar_item.dart';

class LeftToolbar extends StatelessWidget {
  LeftToolbar(this.controller, this.screens);

  final ScrollController controller;
  final List<ScreenItem> screens;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildItems(context),
      ),
    );
  }

  List<Widget> _buildItems(BuildContext context) {
    List<Widget> items = [];
    for (int i = 0; i < screens.length; i++) {
      items.add(LeftToolbarItem(
          _buildOnTap(context, i), screens[i].icon, screens[i].title));
    }
    return items;
  }

  Function() _buildOnTap(BuildContext context, int index) {
    return () => controller.animateTo(
        index * MediaQuery.of(context).size.height,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease);
  }
}
