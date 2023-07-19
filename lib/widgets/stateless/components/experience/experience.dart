import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/titled_view.dart';

class CEExperience extends StatelessWidget {
  CEExperience({this.title = 'Experience', required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CCTitledView(
      title: title,
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }
}
