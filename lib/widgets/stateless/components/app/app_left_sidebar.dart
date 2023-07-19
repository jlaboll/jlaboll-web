import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CAAppLeftSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ResponsiveScaledBox(
        width: kToolbarHeight,
        child: Material(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
    );
  }
}
