import 'package:flutter/material.dart';

class CAAppDrawerButton extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Material(
        color: Theme.of(context).colorScheme.background,
        child: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox.square(
            dimension: kToolbarHeight,
            child: OutlinedButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              child: Icon(
                Icons.view_headline,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
        ),
      ),
      preferredSize: preferredSize,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
