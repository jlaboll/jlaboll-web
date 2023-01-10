import 'package:flutter/material.dart';

import '../helpers/constants/object_constants.dart';

class Home extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return pageBody(context, child: Column());
  }
}
