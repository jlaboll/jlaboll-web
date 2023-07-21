import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../classes/on_press_opacity.dart';
import '../../../inherited/scroll_controller_query.dart';

class CCNavBarButton extends StatelessWidget {
  CCNavBarButton({required this.index, required this.text, required this.icon});

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
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: padding),
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
