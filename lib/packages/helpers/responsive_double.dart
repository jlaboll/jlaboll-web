import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveDouble {
  final double defaultValue;
  final BuildContext context;
  final double mobileRatio;
  final double tabletRatio;
  final double uhdRatio;
  late ResponsiveValue<double> responsiveValue;

  ResponsiveDouble(this.context, this.defaultValue,
      {this.mobileRatio = 0.7, this.tabletRatio = 0.8, this.uhdRatio = 1.2}) {
    this.responsiveValue = ResponsiveValue(
      context,
      defaultValue: defaultValue,
      valueWhen: <Condition<double>>[
        Condition<double>.smallerThan(
            name: TABLET, value: defaultValue * mobileRatio),
        Condition<double>.smallerThan(
            name: DESKTOP, value: defaultValue * tabletRatio),
        Condition<double>.largerThan(
            name: "4K", value: defaultValue * uhdRatio),
      ],
    );
  }

  double get value =>
      responsiveValue.value != null ? responsiveValue.value! : defaultValue;
}
