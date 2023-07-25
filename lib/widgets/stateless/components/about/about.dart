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
    double padding = 0;
    double imageWidth = 0;
    switch (ResponsiveBreakpoints.of(context).breakpoint.name) {
      case MOBILE:
        padding = 20;
        imageWidth = 140;
        break;
      case TABLET:
        padding = 30;
        imageWidth = 160;
        break;
      case DESKTOP:
        padding = 40;
        imageWidth = 225;
        break;
      default:
        padding = 50;
        imageWidth = 260;
        break;
    }

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
    return Container(
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
                    child: buttonChild,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
