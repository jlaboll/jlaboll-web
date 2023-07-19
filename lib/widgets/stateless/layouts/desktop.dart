import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/list_view_constraints_query.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_nav_bar.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/quick_link_bar.dart';
import 'package:jlaboll_web/widgets/stateless/layouts/sidebar.dart';

import '../../inherited/scroll_controller_query.dart';
import '../components/common/page.dart';

class LDesktop extends StatelessWidget {
  LDesktop({required this.pages, required this.quickLinks});

  final List<CCPage> pages;
  final List<Widget> quickLinks;

  @override
  Widget build(BuildContext context) {
    return LSidebar(
      stackChildren: <Widget>[
        ListViewConstraintsQuery.of(context).getListView(
          pages,
          ScrollControllerQuery.of(context),
        ),
        CAAppNavBar(
          children: List.generate(
            pages.length,
            (index) => pages[index].navButton,
          ),
        ),
        CCQuickLinkBar(quickLinkChildren: quickLinks),
      ],
    );
  }
}
