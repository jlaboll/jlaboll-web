import 'package:flutter/material.dart';

class CCQuickLinkBar extends StatelessWidget {
  CCQuickLinkBar({required this.quickLinkChildren});

  final List<Widget> quickLinkChildren;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: kToolbarHeight,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: quickLinkChildren,
        ),
      ),
    );
  }
}
