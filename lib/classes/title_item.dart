import 'package:jlaboll_web/packages/components/app_text.dart';

enum TitleStyle {
  BOLD_DECORATED_TITLE,
  BOLD_DECORATED_TITLE_SECONDARY,
  BOLD_DECORATED_SUBTITLE,
  BOLD_DECORATED_SUBTITLE_SECONDARY,
  BOLD_DECORATED_BODY,
  BOLD_DECORATED_BODY_SECONDARY,
  BOLD_TITLE,
  BOLD_TITLE_SECONDARY,
  BOLD_SUBTITLE,
  BOLD_SUBTITLE_SECONDARY,
  BOLD_BODY,
  BOLD_BODY_SECONDARY,
  DECORATED_TITLE,
  DECORATED_TITLE_SECONDARY,
  DECORATED_SUBTITLE,
  DECORATED_SUBTITLE_SECONDARY,
  DECORATED_BODY,
  DECORATED_BODY_SECONDARY,
  TITLE,
  TITLE_SECONDARY,
  SUBTITLE,
  SUBTITLE_SECONDARY,
  BODY,
  BODY_SECONDARY
}

class TitleItem {
  TitleItem(
      {required this.screen_item_index,
      required this.sort_order,
      required this.title,
      required this.style});
  final int screen_item_index;
  final int sort_order;
  final String title;
  final TitleStyle style;

  AppText getWidget() {
    switch (style) {
      case TitleStyle.BOLD_DECORATED_TITLE:
        return AppText(
            type: AppTextStyle.TITLE,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_DECORATED_TITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.TITLE_SECONDARY,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_DECORATED_SUBTITLE:
        return AppText(
            type: AppTextStyle.SUBTITLE,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_DECORATED_SUBTITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.SUBTITLE_SECONDARY,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_DECORATED_BODY:
        return AppText(
            type: AppTextStyle.BODY,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_DECORATED_BODY_SECONDARY:
        return AppText(
            type: AppTextStyle.BODY_SECONDARY,
            text: title,
            shouldBold: true,
            shouldDecorate: true);
      case TitleStyle.BOLD_TITLE:
        return AppText(type: AppTextStyle.TITLE, text: title, shouldBold: true);
      case TitleStyle.BOLD_TITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.TITLE_SECONDARY, text: title, shouldBold: true);
      case TitleStyle.BOLD_SUBTITLE:
        return AppText(
            type: AppTextStyle.SUBTITLE, text: title, shouldBold: true);
      case TitleStyle.BOLD_SUBTITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.SUBTITLE_SECONDARY,
            text: title,
            shouldBold: true);
      case TitleStyle.BOLD_BODY:
        return AppText(type: AppTextStyle.BODY, text: title, shouldBold: true);
      case TitleStyle.BOLD_BODY_SECONDARY:
        return AppText(
            type: AppTextStyle.BODY_SECONDARY, text: title, shouldBold: true);
      case TitleStyle.DECORATED_TITLE:
        return AppText(
            type: AppTextStyle.TITLE, text: title, shouldDecorate: true);
      case TitleStyle.DECORATED_TITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.TITLE_SECONDARY,
            text: title,
            shouldDecorate: true);
      case TitleStyle.DECORATED_SUBTITLE:
        return AppText(
            type: AppTextStyle.SUBTITLE, text: title, shouldDecorate: true);
      case TitleStyle.DECORATED_SUBTITLE_SECONDARY:
        return AppText(
            type: AppTextStyle.SUBTITLE_SECONDARY,
            text: title,
            shouldDecorate: true);
      case TitleStyle.DECORATED_BODY:
        return AppText(
            type: AppTextStyle.BODY, text: title, shouldDecorate: true);
      case TitleStyle.DECORATED_BODY_SECONDARY:
        return AppText(
            type: AppTextStyle.BODY_SECONDARY,
            text: title,
            shouldDecorate: true);
      case TitleStyle.TITLE:
        return AppText(type: AppTextStyle.TITLE, text: title);
      case TitleStyle.TITLE_SECONDARY:
        return AppText(type: AppTextStyle.TITLE_SECONDARY, text: title);
      case TitleStyle.SUBTITLE:
        return AppText(type: AppTextStyle.SUBTITLE, text: title);
      case TitleStyle.SUBTITLE_SECONDARY:
        return AppText(type: AppTextStyle.SUBTITLE_SECONDARY, text: title);
      case TitleStyle.BODY:
        return AppText(type: AppTextStyle.BODY, text: title);
      case TitleStyle.BODY_SECONDARY:
        return AppText(type: AppTextStyle.BODY_SECONDARY, text: title);
    }
  }
}
