import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/bullet_list_popup_card.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/horizontal_work_card_content.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/vertical_work_card_content.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../classes/simple_responsive_value.dart';
import '../../../inherited/responsive_padding_query.dart';

class CEWorkCard extends StatelessWidget {
  CEWorkCard(
      {required this.imageUrl,
      required this.position,
      required this.company,
      required this.startDate,
      required this.endDate,
      required this.detailsTitle,
      required this.details,
      required this.websiteUrl});

  final String imageUrl;
  final String position;
  final String company;
  final String startDate;
  final String endDate;
  final String detailsTitle;
  final List<String> details;
  final String websiteUrl;

  @override
  Widget build(BuildContext context) {
    Size imageSize = SimpleResponsiveValue<Size>(context, Size(150, 50),
            Size(180, 60), Size(250, 75), Size(300, 100))
        .value;

    return Padding(
      padding: EdgeInsets.all(
        ResponsivePaddingQuery.padding(context, "REGULAR"),
      ),
      child: CCBulletListPopupCard(
        popupTitle: detailsTitle,
        popupBulletedContent: details,
        child: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
            ? CEHorizontalWorkCardContent(
                imageUrl: imageUrl,
                position: position,
                company: company,
                startDate: startDate,
                endDate: endDate,
                websiteUrl: websiteUrl,
                imageSize: imageSize)
            : CEVerticalWorkCardContent(
                imageUrl: imageUrl,
                position: position,
                company: company,
                startDate: startDate,
                endDate: endDate,
                websiteUrl: websiteUrl,
                imageSize: imageSize),
      ),
    );
  }
}
