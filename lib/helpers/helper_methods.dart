import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/constants.dart';
import 'package:jlaboll_web/helpers/responsive_layout.dart';

import 'my_url_launcher.dart';

final MyURLLauncher launcher = MyURLLauncher();

Widget VertScaledBox(BuildContext context, [double scale = 0.02]) => SizedBox(
      height: MediaQuery.of(context).size.height * scale,
    );

Widget HorizScaledBox(BuildContext context, [double scale = 0.02]) => SizedBox(
      width: MediaQuery.of(context).size.width * scale,
    );

Widget pageBody(BuildContext context, {required Widget child}) => SizedBox(
      height: MediaQuery.of(context).size.height - largeScreenToolbarHeight,
      width: double.infinity,
      child: padding(context, child: child),
    );

Widget padding(BuildContext context, {required Widget child}) {
  return Padding(
    padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: ResponsiveLayout.isSmallScreen(context) ? 25 : 40),
    child: child,
  );
}

Widget cardView(List<Widget> list) {
  return Flexible(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  offset: Offset(0.0, 1.0), color: Colors.grey, blurRadius: 5)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (_, int index) => list[index],
          ),
        ),
      ));
}
