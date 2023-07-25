import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CCAvatar extends StatelessWidget {
  CCAvatar({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    double avatarRadius = 0;
    double avatarInsetRadius = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        avatarRadius = 120;
        avatarInsetRadius = 112;
        break;
      case TABLET:
        avatarRadius = 135;
        avatarInsetRadius = 125;
        break;
      case DESKTOP:
        avatarRadius = 150;
        avatarInsetRadius = 138;
        break;
      default:
        avatarRadius = 170;
        avatarInsetRadius = 155;
        break;
    }

    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius: avatarRadius,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius: avatarInsetRadius,
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
