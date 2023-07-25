import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/url_launcher_query.dart';
import 'package:jlaboll_web/widgets/stateless/layouts/desktop.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../inherited/scroll_controller_query.dart';
import '../stateless/components/common/page.dart';
import '../stateless/layouts/mobile.dart';

class RootPage extends StatefulWidget {
  RootPage({required this.pages, required this.quickLinks});

  final List<CCPage> pages;
  final List<Widget> quickLinks;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double scaleWidth = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        scaleWidth = 360;
        break;
      case TABLET:
        scaleWidth = 864;
        break;
      case DESKTOP:
        scaleWidth = 1366;
        break;
      default:
        scaleWidth = 1920;
        break;
    }

    return SafeArea(
      child: UrlLauncherQuery(
        child: ScrollControllerQuery(
          scrollController: scrollController,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
                return ResponsiveScaledBox(
                  width: scaleWidth,
                  child: LDesktop(
                    pages: widget.pages,
                    quickLinks: widget.quickLinks,
                  ),
                );
              }
              return LMobile(
                pages: widget.pages,
                quickLinks: widget.quickLinks,
                scaleWidth: scaleWidth,
              );
            },
          ),
        ),
      ),
    );
  }
}
