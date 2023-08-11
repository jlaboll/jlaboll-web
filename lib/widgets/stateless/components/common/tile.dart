import 'package:flutter/material.dart';
import 'package:jlaboll_web/classes/on_press_opacity.dart';
import 'package:jlaboll_web/classes/rounded_rectangle.dart';
import 'package:jlaboll_web/classes/simple_responsive_value.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';

class CCTile extends StatelessWidget {
  CCTile({required this.onPressed, required this.imageUrl});

  final Function() onPressed;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: SizedBox.square(
        dimension:
            SimpleResponsiveValue<double>(context, 70, 90, 110, 130).value,
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
