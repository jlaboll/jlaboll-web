import 'package:flutter/material.dart';

class LAppDrawer extends StatelessWidget {
  LAppDrawer(
      {required this.appBar,
      required this.drawer,
      required this.stackChildren});

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final List<Widget> stackChildren;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      drawer: drawer,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: stackChildren,
        ),
      ),
    );
  }
}
