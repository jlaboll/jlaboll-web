import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/titled_view.dart';

class CSSkills extends StatelessWidget {
  CSSkills({required this.children, this.title = 'Skills'});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CCTitledView(
      title: title,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
