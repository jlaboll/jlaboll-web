import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlaboll_web/packages/helpers/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'my_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 800, name: MOBILE),
          const Breakpoint(start: 801, end: double.infinity, name: DESKTOP)
        ],
      ),
      title: 'Jasen LaBolle',
      theme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyWidget(),
    );
  }
}
