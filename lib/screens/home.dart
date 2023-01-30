import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/screen_widgets/home_avatar.dart';

import '../widgets/layout.dart';

class Home extends StatelessWidget {
  static String homeTitle1 = 'Hey! I am';
  static String homeTitle2 = 'Jasen LaBolle';
  static String homeTitle3 = 'Full Stack Developer';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          homeTitle1,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: Layout.of(context).mobile ? 15 : 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ),
        Text(
          homeTitle2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: Layout.of(context).mobile ? 25 : 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        Text(
          homeTitle3,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: Layout.of(context).mobile ? 20 : 25,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        Padding(padding: EdgeInsets.all(10)),
        HomeAvatar(),
      ],
    );
  }
}
