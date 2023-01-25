import 'package:flutter/material.dart';

import '../helpers/helper_methods.dart';
import 'abstract_screen.dart';

class Skills extends StatelessWidget implements AbstractScreen {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return pageBody(context, child: Column());
  }

  @override
  Icon get icon => const Icon(Icons.bolt);

  @override
  String get title => 'Skills';
}
