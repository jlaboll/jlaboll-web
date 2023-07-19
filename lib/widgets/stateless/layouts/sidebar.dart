import 'package:flutter/material.dart';

class LSidebar extends StatelessWidget {
  LSidebar({required this.stackChildren});

  final List<Widget> stackChildren;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: stackChildren,
      ),
    );
  }
}
