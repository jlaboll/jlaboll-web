import 'package:flutter/material.dart';

import '../../../../classes/simple_responsive_value.dart';

class CCAvatar extends StatelessWidget {
  CCAvatar({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius:
            SimpleResponsiveValue<double>(context, 120, 135, 150, 170).value,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius:
              SimpleResponsiveValue<double>(context, 112, 125, 138, 155).value,
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
