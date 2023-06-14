import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/components/app_text.dart';
import 'package:jlaboll_web/packages/helpers/constants.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

class MobileAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _header(),
          _image(context),
          _expandedDetails(context),
        ],
      ),
    );
  }

  Widget _header() {
    return AppText(
      type: AppTextStyle.TITLE,
      text: 'About Me',
      shouldDecorate: true,
    );
  }

  Widget _image(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 25,
      ),
      child: SizedBox(
        width: 225,
        height: 225,
        child: ImageLoadingAnimator(
          imageProvider: NetworkImage(aboutImageUrl),
        ),
      ),
    );
  }

  Widget _expandedDetails(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            aboutDetails.length + 1,
            (index) {
              if (index >= aboutDetails.length) {
                return _detailButtons(context);
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: AppText(
                    type: AppTextStyle.BODY,
                    text: aboutDetails[index],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _detailButtons(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= MOBILE_BREAKPOINT) {
          return SizedBox(
            width: constraints.maxWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Contact Me'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  child: Text('Download Resume'),
                  onPressed: () {},
                ),
              ],
            ),
          );
        } else {
          return SizedBox(
            width: constraints.maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Contact Me'),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: Text('Download Resume'),
                  onPressed: () {},
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
