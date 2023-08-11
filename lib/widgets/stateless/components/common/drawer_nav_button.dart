import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/scroll_controller_query.dart';

import '../../../../classes/simple_responsive_value.dart';

class CCDrawerNavButton extends StatelessWidget {
  CCDrawerNavButton(
      {required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double padding = SimpleResponsiveValue<double>(context, 5, 7, 9, 13).value;

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
            MediaQuery.of(context).size.height,
          );
        },
      ),
    );
  }
}
