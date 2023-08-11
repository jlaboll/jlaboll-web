import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/work_card_button.dart';

import '../../../../classes/simple_responsive_value.dart';
import '../common/padded_network_image_from_size.dart';

class CEVerticalWorkCardContent extends StatelessWidget {
  CEVerticalWorkCardContent(
      {required this.imageUrl,
      required this.position,
      required this.company,
      required this.startDate,
      required this.endDate,
      required this.websiteUrl,
      required this.imageSize});

  final String imageUrl;
  final String position;
  final String company;
  final String startDate;
  final String endDate;
  final String websiteUrl;
  final Size imageSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              SimpleResponsiveValue<double>(context, 4, 5, 6, 7).value,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CCPaddedNetworkImageFromSize(
                  imageSize: imageSize,
                  imageUrl: imageUrl,
                  padding:
                      SimpleResponsiveValue<double>(context, 2, 3, 3, 4).value,
                ),
                CAAppText(
                  type: CAAppTextStyle.SUBTITLE,
                  text: position,
                ),
                CAAppText(
                  type: CAAppTextStyle.SUBTITLE_SECONDARY,
                  text: company,
                ),
                CAAppText(
                  type: CAAppTextStyle.BODY,
                  text: startDate + ' - ' + endDate,
                ),
              ],
            ),
          ),
        ),
        CEWorkCardWebsiteButton(
          websiteUrl: websiteUrl,
          padding: SimpleResponsiveValue<double>(context, 2, 3, 3, 4).value,
        ),
      ],
    );
  }
}
