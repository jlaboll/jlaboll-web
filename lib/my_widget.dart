import 'package:flutter/material.dart';
import 'package:jlaboll_web/helpers/my_colors.dart';
import 'package:jlaboll_web/screens/about.dart';
import 'package:jlaboll_web/screens/home.dart';
import 'package:jlaboll_web/widgets/my_nav_bar.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late ScrollController scrollController;
  late List<Widget> pageList;

  @override
  void initState() {
    scrollController = ScrollController();
    pageList = <Widget>[Home(), About()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyColors.secondary_grey,
      body: Stack(
        children: <Widget>[
          Scrollbar(
            controller: scrollController,
            child: ListView(
              controller: scrollController,
              children: pageList,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: MyNavBar(scrollController),
          )
        ],
      ),
    ));
  }
}
