import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyWidget(),
    );
  }
}
