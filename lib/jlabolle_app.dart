import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'constants.dart';
import 'widgets/stateful/root_page.dart';

class JlabolleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: kResponsiveBreakpoints,
      ),
      title: kAppTitle,
      theme: ThemeData(
        colorScheme: kDarkColorScheme,
        textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: RootPage(
        pages: kPages,
        quickLinks: kQuickLinks,
      ),
    );
  }
}
