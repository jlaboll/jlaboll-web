import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/work_card_button.dart';

import '../../../inherited/responsive_padding_query.dart';
import '../common/padded_network_image_from_size.dart';

class CEHorizontalWorkCardContent extends StatelessWidget {
  CEHorizontalWorkCardContent(
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
        CCPaddedNetworkImageFromSize(
          imageSize: imageSize,
          imageUrl: imageUrl,
          padding: ResponsivePaddingQuery.padding(context, "SMALLEST"),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              ResponsivePaddingQuery.padding(context, "SMALL"),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
          padding: ResponsivePaddingQuery.padding(context, "SMALLEST"),
        ),
      ],
    );
  }
}
