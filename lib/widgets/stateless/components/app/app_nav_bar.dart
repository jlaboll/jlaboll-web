import 'package:flutter/material.dart';

class CAAppNavBar extends StatelessWidget {
  CAAppNavBar({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: kToolbarHeight,
        height: MediaQuery.of(context).size.height,
        child: Material(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
    );
  }
}
