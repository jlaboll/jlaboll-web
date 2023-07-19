import 'package:flutter/material.dart';

class LAppDrawer extends StatelessWidget {
  LAppDrawer({required this.appBar, required this.drawer, required this.body});

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: body,
        ),
      ),
    );
  }
}
