import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/inherited/list_view_constraints_query.dart';

class CCPage extends StatelessWidget {
  CCPage({required this.navButton, required this.content});

  final Widget navButton;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: ListViewConstraintsQuery.of(context).padding, child: content,);
  }
}
