import 'package:flutter/material.dart';
import 'package:jlaboll_web/classes/on_press_opacity.dart';
import 'package:jlaboll_web/classes/rounded_rectangle.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CCTile extends StatelessWidget {
  CCTile({required this.onPressed, required this.imageUrl});

  final Function() onPressed;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double boxSize = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        boxSize = 50;
        break;
      case TABLET:
        boxSize = 60;
        break;
      case DESKTOP:
        boxSize = 100;
        break;
      default:
        boxSize = 120;
        break;
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: boxSize,
        height: boxSize,
        child: FilledButton(
          style: ButtonStyle(
            shape: RoundedRectangle(),
            backgroundColor: OnPressOpacity(
              colorValue: Theme.of(context)
                  .colorScheme
                  .surfaceVariant
                  .withAlpha(127)
                  .value,
              opacity: 0.2,
            ),
          ),
          onPressed: onPressed,
          child: CCImageAnimator(
            provider: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
