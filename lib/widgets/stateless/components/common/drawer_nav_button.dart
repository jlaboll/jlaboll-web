import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/scroll_controller_query.dart';

import '../../../inherited/responsive_padding_query.dart';

class CCDrawerNavButton extends StatelessWidget {
  CCDrawerNavButton(
      {required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ResponsivePaddingQuery.padding(context, "SMALL")),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(ResponsivePaddingQuery.padding(context, "SMALL")),
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
              index, MediaQuery.of(context).size.height,
              offset: kToolbarHeight);
        },
      ),
    );
  }
}
