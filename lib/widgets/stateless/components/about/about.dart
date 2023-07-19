import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/titled_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../app/app_text.dart';

class CAbAbout extends StatelessWidget {
  CAbAbout(
      {required this.imageUrl,
      required this.details,
      required this.buttons,
      this.title = 'About'});

  final String title;
  final String imageUrl;
  final List<String> details;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return CCTitledView(
      title: title,
      child: Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
              return _horizontalAxis();
            } else {
              return _verticalAxis();
            }
          },
        ),
      ),
    );
  }

  Widget _imageContainer() {
    return Container(
      padding: EdgeInsets.all(25),
      child: SizedBox(
        width: 225,
        child: CCImageAnimator(
          provider: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Widget _listBuilder(Widget buttonChild) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            details.length + 1,
            (index) {
              if (index >= details.length) {
                return LayoutBuilder(
                  builder: (context, constraints) => SizedBox(
                    width: constraints.maxWidth,
                    child: buttonChild,
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: details[index],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _verticalAxisListButtonChild() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        buttons.length,
        (index) => Padding(
          padding: EdgeInsets.all(5),
          child: buttons[index],
        ),
      ),
    );
  }

  Widget _horizontalAxisListButtonChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        buttons.length,
        (index) => Padding(
          padding: EdgeInsets.all(5),
          child: buttons[index],
        ),
      ),
    );
  }

  Widget _verticalAxis() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _imageContainer(),
        _listBuilder(_verticalAxisListButtonChild())
      ],
    );
  }

  Widget _horizontalAxis() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _imageContainer(),
        _listBuilder(_horizontalAxisListButtonChild())
      ],
    );
  }
}
