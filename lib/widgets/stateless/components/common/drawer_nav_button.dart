import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/scroll_controller_query.dart';

class CCDrawerNavButton extends StatelessWidget {
  CCDrawerNavButton(
      {required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        tileColor: Theme.of(context).colorScheme.onPrimaryContainer,
        iconColor: Theme.of(context).colorScheme.onPrimary,
        textColor: Theme.of(context).colorScheme.onPrimary,
        leading: Icon(icon),
        title: Text(text),
        onTap: () {
          Scaffold.of(context).closeDrawer();
          ScrollControllerQuery.of(context).animateTo(
              index * (MediaQuery.of(context).size.height - kToolbarHeight),
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease);
        },
      ),
    );
  }
}
