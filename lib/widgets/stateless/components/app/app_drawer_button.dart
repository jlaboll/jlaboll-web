import 'package:flutter/material.dart';

class CAAppDrawerButton extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Material(
        color: Theme.of(context).colorScheme.background.withOpacity(0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (states) => Theme.of(context).colorScheme.background,
                  ),
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
                child: Center(
                  child: Icon(
                    Icons.view_headline,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
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
