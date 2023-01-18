import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jlaboll_web/helpers/my_colors.dart';

import 'my_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jasen LaBolle',
      theme: ThemeData(
        primaryColor: MyColors.primary,
        textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyWidget(),
    );
  }
}
