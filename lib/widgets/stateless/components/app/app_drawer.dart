import 'package:flutter/material.dart';

class CAAppDrawer extends StatelessWidget {
  CAAppDrawer({required this.drawerChildren});

  final List<Widget> drawerChildren;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Drawer(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        shadowColor: Theme.of(context).colorScheme.shadow,
        child: ListView(
          children: drawerChildren,
        ),
      ),
    );
  }
}
