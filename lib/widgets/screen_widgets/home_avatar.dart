import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/helpers/constants.dart';

class HomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius: 150,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius: 140,
          backgroundImage: NetworkImage(homeImageUrl),
        ),
      ),
    );
  }
}
