import 'package:flutter/material.dart';

import '../helpers/helper_methods.dart';
import 'abstract_screen.dart';

class Projects extends StatelessWidget implements AbstractScreen {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return pageBody(context, child: Column());
  }

  @override
  Icon get icon => const Icon(Icons.code);

  @override
  String get title => 'Projects';
}
