import 'package:flutter/material.dart';

class CCAvatar extends StatelessWidget {
  CCAvatar({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CircleAvatar(
        radius: 150,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: CircleAvatar(
          radius: 140,
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
