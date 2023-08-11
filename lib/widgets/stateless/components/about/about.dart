import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/image_animator.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/titled_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../classes/simple_responsive_value.dart';
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
    double padding =
        SimpleResponsiveValue<double>(context, 20, 30, 40, 50).value;
    double imageWidth =
        SimpleResponsiveValue<double>(context, 140, 160, 225, 260).value;

    return CCTitledView(
      title: title,
      child: Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (ResponsiveBreakpoints.of(context).largerThan(TABLET)) {
              return _horizontalAxis(padding, imageWidth);
            } else {
              return _verticalAxis(padding, imageWidth);
            }
          },
        ),
      ),
    );
  }

  Widget _imageContainer(double padding, double imageWidth) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SizedBox(
        width: imageWidth,
        child: CCImageAnimator(
          provider: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Widget _listBuilder(Widget buttonChild, double padding) {
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
                    child: Center(
                      child: buttonChild,
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: padding / 2),
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

  Widget _verticalAxisListButtonChild(double padding) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        buttons.length,
        (index) => Padding(
          padding: EdgeInsets.all(padding / 4),
          child: buttons[index],
        ),
      ),
    );
  }

  Widget _horizontalAxisListButtonChild(double padding) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        buttons.length,
        (index) => Padding(
          padding: EdgeInsets.all(padding / 4),
          child: buttons[index],
        ),
      ),
    );
  }

  Widget _verticalAxis(double padding, double imageWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _imageContainer(padding, imageWidth),
        _listBuilder(_verticalAxisListButtonChild(padding), padding),
      ],
    );
  }

  Widget _horizontalAxis(double padding, double imageWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _imageContainer(padding, imageWidth),
        _listBuilder(_horizontalAxisListButtonChild(padding), padding),
      ],
    );
  }
}
