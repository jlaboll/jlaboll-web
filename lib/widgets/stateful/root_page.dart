import 'package:flutter/material.dart';
import 'package:jlaboll_web/constants.dart';
import 'package:jlaboll_web/widgets/inherited/responsive_padding_query.dart';
import 'package:jlaboll_web/widgets/inherited/url_launcher_query.dart';
import 'package:jlaboll_web/widgets/stateless/layouts/desktop.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../classes/simple_responsive_value.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: UrlLauncherQuery(
        child: ScrollControllerQuery(
          scrollController: ScrollController(
            initialScrollOffset:
                ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? 0
                    : kToolbarHeight,
            keepScrollOffset:
                ResponsiveBreakpoints.of(context).largerThan(TABLET),
          ),
          child: ResponsivePaddingQuery(
            paddingMap: {
              kSMALLEST: ResponsiveValue<double>(
                context,
                conditionalValues: kSmallestPaddingConditions,
              ),
              kSMALL: ResponsiveValue<double>(
                context,
                conditionalValues: kSmallPaddingConditions,
              ),
              kREGULAR: ResponsiveValue<double>(
                context,
                conditionalValues: kRegularPaddingConditions,
              ),
              kLARGE: ResponsiveValue<double>(
                context,
                conditionalValues: kLargePaddingConditions,
              ),
            },
            child: ResponsiveScaledBox(
              width:
                  SimpleResponsiveValue<double>(context, 360, 864, 1366, 1920)
                      .value,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
                    return LDesktop(
                      pages: widget.pages,
                      quickLinks: widget.quickLinks,
                    );
                  }
                  return LMobile(
                    pages: widget.pages,
                    quickLinks: widget.quickLinks,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
