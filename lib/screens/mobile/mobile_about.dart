import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/components/app_text.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

import '../../classes/button_item.dart';

class MobileAbout extends StatelessWidget {
  MobileAbout(
      {required this.header,
      required this.imageUrl,
      required this.details,
      required this.buttons});

  final Widget header;
  final String imageUrl;
  final List<String> details;
  final List<ButtonItem> buttons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        header,
        Container(
          padding: EdgeInsets.only(
            right: 25,
          ),
          child: SizedBox(
            width: 225,
            height: 225,
            child: ImageLoadingAnimator(
              imageProvider: NetworkImage(imageUrl),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                details.length + 1,
                (index) {
                  if (index >= details.length) {
                    return LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                        width: constraints.maxWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(
                            buttons.length,
                            (index) => Padding(
                              padding: EdgeInsets.all(5),
                              child: ElevatedButton(
                                onPressed: buttons[index].on_press,
                                child: Text(buttons[index].text),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
                  } else {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: AppText(
                        type: AppTextStyle.BODY,
                        text: details[index],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
