import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/drawer_nav_button.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/nav_bar_button.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CAAppNavButton extends StatelessWidget {
  CAAppNavButton({required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
          return CCNavBarButton(index: index, text: text, icon: icon);
        } else {
          return CCDrawerNavButton(index: index, text: text, icon: icon);
        }
      },
    );
  }
}
