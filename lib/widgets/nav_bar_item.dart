import 'package:flutter/material.dart';

import '../helpers/responsive_layout.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {required this.title, required this.onTap, required this.color});
  final String title;
  final Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveLayout.isSmallScreen(context) ? 5 : 20,
        vertical: ResponsiveLayout.isSmallScreen(context) ? 0 : 10,
      ),
      child: Center(
          child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: RotatedBox(
            quarterTurns: ResponsiveLayout.isSmallScreen(context) ? 0 : 3,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: ResponsiveLayout.isSmallScreen(context) ? 10 : 15,
                  fontWeight: FontWeight.w600,
                  color: color),
            ),
          ),
        ),
      )),
    );
  }
}
