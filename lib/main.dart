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

// class TestApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'test',
//         theme: ThemeData(
//           primaryColor: Colors.white,
//         ),
//         home: TestWidget());
//   }
// }
//
// class TestWidget extends StatefulWidget {
//   @override
//   State<TestWidget> createState() => _TestWidgetState();
// }
//
// class _TestWidgetState extends State<TestWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         return Scaffold(
//           floatingActionButton: Builder(
//             builder: (BuildContext context) {
//               return Padding(
//                   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
//                   child: FloatingActionButton(
//                     onPressed: () {
//                       Scaffold.of(context).openDrawer();
//                     },
//                     child: const Icon(Icons.view_headline),
//                   ));
//             },
//           ),
//           floatingActionButtonLocation:
//               FloatingActionButtonLocation.miniStartTop,
//           drawer: Drawer(
//             child: ListView(
//               children: [
//                 setSizeBox(Colors.red, 20),
//                 setSizeBox(Colors.red, 20)
//               ],
//             ),
//           ),
//         );
//       },
//     ));
//   }
// }
//
// Widget fillBox(Color color) {
//   return Container(color: color);
// }
//
// Widget setSizeBox(Color color, double size) {
//   return ListTile(
//       tileColor: Colors.black12,
//       title: Container(
//         height: size,
//         width: size,
//         color: color,
//       ));
// }
