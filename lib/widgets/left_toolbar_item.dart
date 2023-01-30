import 'package:flutter/material.dart';
import 'package:jlaboll_web/material_states/on_press_opacity.dart';

class LeftToolbarItem extends StatelessWidget {
  LeftToolbarItem(this.onPressed, this.icon, this.title);
  final Function() onPressed;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        foregroundColor: OnPressOpacity(
          opacity: 0.5,
          colorValue: Theme.of(context).colorScheme.onSecondary.value,
        ),
      ),
      onPressed: onPressed,
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(icon),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
