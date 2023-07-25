import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/scroll_controller_query.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CCDrawerNavButton extends StatelessWidget {
  CCDrawerNavButton(
      {required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double padding = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 5;
        break;
      case TABLET:
        padding = 7;
        break;
      case DESKTOP:
        padding = 9;
        break;
      default:
        padding = 13;
        break;
    }

    return Padding(
      padding: EdgeInsets.all(padding),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(padding),
          ),
        ),
        tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
        iconColor: Theme.of(context).colorScheme.onPrimary,
        textColor: Theme.of(context).colorScheme.onPrimary,
        leading: Icon(icon),
        title: Text(text),
        onTap: () {
          Scaffold.of(context).closeDrawer();
          ScrollControllerQuery.of(context).scrollTo(
            index,
            MediaQuery.of(context).size.height - kToolbarHeight,
          );
        },
      ),
    );
  }
}
