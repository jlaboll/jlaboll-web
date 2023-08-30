import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/scroll_controller_query.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_drawer_button.dart';
import 'package:jlaboll_web/widgets/stateless/layouts/app_drawer.dart';

import '../components/app/app_drawer.dart';
import '../components/common/page.dart';
import '../components/common/quick_link_bar.dart';

class LMobile extends StatelessWidget {
  LMobile({required this.pages, required this.quickLinks});

  final List<CCPage> pages;
  final List<Widget> quickLinks;

  @override
  Widget build(BuildContext context) {
    return LAppDrawer(
      appBar: CAAppDrawerButton(),
      drawer: CAAppDrawer(
        drawerChildren: List.generate(
          pages.length,
          (index) => pages[index].navButton,
        ),
      ),
      stackChildren: <Widget>[
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              controller: ScrollControllerQuery.controllerOf(context),
              itemExtent: MediaQuery.of(context).size.height,
              children: pages,
            );
          },
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: CCQuickLinkBar(
            quickLinkChildren: quickLinks,
          ),
        ),
      ],
    );
  }
}
