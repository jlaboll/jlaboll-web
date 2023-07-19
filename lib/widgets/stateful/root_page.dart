import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/list_view_constraints_query.dart';
import 'package:jlaboll_web/widgets/inherited/url_launcher_query.dart';
import 'package:jlaboll_web/widgets/stateless/layouts/desktop.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../constants.dart';
import '../inherited/scroll_controller_query.dart';
import '../stateless/components/common/page.dart';
import '../stateless/layouts/mobile.dart';
import '../stateless/layouts/tablet.dart';
import '../stateless/layouts/uhd.dart';

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
    double scaledBoxWidth = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        scaledBoxWidth = kScaleWidthMobile;
        break;
      case TABLET:
        scaledBoxWidth = kScaleWidthTablet;
        break;
      case DESKTOP:
        scaledBoxWidth = kScaleWidthDesktop;
        break;
      default:
        scaledBoxWidth = kScaleWidthUHD;
        break;
    }

    return SafeArea(
      child: UrlLauncherQuery(
        child: ScrollControllerQuery(
          scrollController: scrollController,
          child: ResponsiveScaledBox(
            width: scaledBoxWidth,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (ResponsiveBreakpoints.of(context).largerThan(DESKTOP)) {
                  return ListViewConstraintsQuery(
                    width: MediaQuery.of(context).size.width - kToolbarHeight,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: kToolbarHeight),
                    child: LUHD(
                      pages: widget.pages,
                      quickLinks: widget.quickLinks,
                    ),
                  );
                } else if (ResponsiveBreakpoints.of(context)
                    .largerThan(TABLET)) {
                  return ListViewConstraintsQuery(
                    width: MediaQuery.of(context).size.width - kToolbarHeight,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: kToolbarHeight),
                    child: LDesktop(
                      pages: widget.pages,
                      quickLinks: widget.quickLinks,
                    ),
                  );
                } else if (ResponsiveBreakpoints.of(context)
                    .largerThan(MOBILE)) {
                  return ListViewConstraintsQuery(
                    width: MediaQuery.of(context).size.width - kToolbarHeight,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: kToolbarHeight),
                    child: LTablet(),
                  );
                } else {
                  return ListViewConstraintsQuery(
                    width: MediaQuery.of(context).size.width - kToolbarHeight,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: kToolbarHeight),
                    child: LMobile(),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
