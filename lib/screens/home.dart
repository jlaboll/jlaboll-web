import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/constants.dart';
import 'package:jlaboll_web/helpers/my_colors.dart';

import '../helpers/helper_methods.dart';
import '../helpers/responsive_layout.dart';
import 'abstract_screen.dart';

class Home extends StatelessWidget implements AbstractScreen {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: padding(context,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                homeTitle1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: ResponsiveLayout.isSmallScreen(context) ? 15 : 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.primary_neon),
              ),
              VertScaledBox(context, 0.01),
              Text(
                homeTitle2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: ResponsiveLayout.isSmallScreen(context) ? 25 : 30,
                    fontWeight: FontWeight.bold,
                    color: MyColors.white),
              ),
              VertScaledBox(context, 0.01),
              Text(
                homeTitle3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: ResponsiveLayout.isSmallScreen(context) ? 20 : 25,
                    fontWeight: FontWeight.bold,
                    color: MyColors.white),
              ),
              VertScaledBox(context, 0.01),
              CircleAvatar(
                  backgroundColor: MyColors.secondary,
                  radius: 120,
                  child: CircleAvatar(
                    radius: 110,
                    foregroundImage: AssetImage('profile.jpg'),
                    backgroundImage: AssetImage('spinner.gif'),
                  )),
            ],
          )),
    );
  }

  @override
  Icon get icon => const Icon(Icons.home);

  @override
  String get title => 'Home';
}
