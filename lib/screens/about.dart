import 'package:flutter/material.dart';
import 'package:jlaboll_web/screens/abstract_screen.dart';

import '../helpers/helper_methods.dart';

class About extends StatelessWidget implements AbstractScreen {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return pageBody(context, child: Column());
  }

  @override
  Icon get icon => const Icon(Icons.info);

  @override
  String get title => 'About';
}
