import 'package:flutter/material.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../../classes/rounded_rectangle.dart';

class CCPopupCard extends StatelessWidget {
  CCPopupCard({required this.child, required this.onPressed});

  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        shape: RoundedRectangle(),
        backgroundColor: OnPressOpacity(
          colorValue:
              Theme.of(context).colorScheme.surfaceVariant.withAlpha(127).value,
          opacity: 0.2,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
