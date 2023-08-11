import 'package:flutter/material.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../../classes/simple_responsive_value.dart';
import '../../../inherited/scroll_controller_query.dart';

class CCNavBarButton extends StatelessWidget {
  CCNavBarButton({required this.index, required this.text, required this.icon});

  final int index;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: OnPressOpacity(
          opacity: 0.0,
          colorValue: Theme.of(context).colorScheme.secondary.value,
        ),
        foregroundColor: OnPressOpacity(
          opacity: 0.5,
          colorValue: Theme.of(context).colorScheme.onSecondary.value,
        ),
      ),
      onPressed: () => ScrollControllerQuery.of(context).scrollTo(
        index,
        MediaQuery.of(context).size.height,
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                SimpleResponsiveValue<double>(context, 5, 7, 9, 13).value,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right:
                      SimpleResponsiveValue<double>(context, 5, 7, 9, 13).value,
                ),
                child: Icon(icon),
              ),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
