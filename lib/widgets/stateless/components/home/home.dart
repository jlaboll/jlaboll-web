import 'package:flutter/material.dart';

class CHHome extends StatelessWidget {
  CHHome({required this.homeChildren});

  final List<Widget> homeChildren;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: homeChildren,
    );
  }
}
