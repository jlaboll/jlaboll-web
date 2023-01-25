import 'package:flutter/material.dart';
import 'package:jlaboll_web/screens/about.dart';
import 'package:jlaboll_web/screens/abstract_screen.dart';
import 'package:jlaboll_web/screens/home.dart';
import 'package:jlaboll_web/widgets/layout.dart';
import 'package:jlaboll_web/widgets/mobile_layout.dart';

import 'helpers/constants.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late ScrollController scrollController;
  late List<AbstractScreen> pageList;

  @override
  void initState() {
    scrollController = ScrollController();
    pageList = <AbstractScreen>[Home(), About()];
    super.initState();
  }

  //
  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //       child: Scaffold(
  //     backgroundColor: MyColors.secondary_grey,
  //     body: LayoutBuilder(
  //         builder: (BuildContext context, BoxConstraints constraints) {
  //       if (constraints.maxWidth <= smallScreenMaxWidth) {
  //         return _buildSmallLayout(context);
  //       } else if (constraints.maxWidth <= mediumScreenMaxWidth) {
  //         return _buildMediumLayout(context);
  //       } else {
  //         return _buildLargeLayout(context);
  //       }
  //     }),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= smallScreenMaxWidth) {
          return MobileLayout(scrollController, pageList, myLinks);
        } else {
          return Layout(scrollController, pageList, myLinks);
        }
      }),
    );
  }

//   Widget _buildMobileLayout(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Builder(
//         builder: (BuildContext context) {
//           return Padding(
//             padding: EdgeInsets.symmetric(vertical: 25),
//             child: FloatingActionButton(
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               child: const Icon(Icons.view_headline),
//             ),
//           );
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
//       drawer: Drawer(
//         child: NavListView(scrollController),
//       ),
//     );
//   }

//   Widget _buildLayout(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Scrollbar(
//             controller: scrollController,
//             child: ListView(
//               controller: scrollController,
//               children: pageList,
//             ),
//           ),
//           Align(
//               alignment: Alignment.centerLeft,
//               child: leftToolbar(
//                   kToolbarHeight,
//                   FittedBox(
//                       child: Column(
//                     children: <Widget>[
//                       Expanded(child: NavListView(scrollController))
//                     ],
//                   )),
//                   shadowDecoration(MyColors.primary, 0, 1, 5))),
//         ],
//       ),
//       backgroundColor: MyColors.secondary_grey,
//     );
//   }
}
