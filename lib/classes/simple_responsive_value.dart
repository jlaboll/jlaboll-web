import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimpleResponsiveValue<T> {
  SimpleResponsiveValue(this.context, this.mobileValue, this.tabletValue,
      this.desktopValue, this.defaultValue) {
    this._responsiveValue = ResponsiveValue(
      context,
      conditionalValues: <Condition<T>>[
        Condition<T>.equals(
          name: MOBILE,
          value: mobileValue,
        ),
        Condition<T>.equals(
          name: TABLET,
          value: tabletValue,
        ),
        Condition<T>.equals(
          name: DESKTOP,
          value: desktopValue,
        ),
      ],
      defaultValue: defaultValue,
    );
    value = _responsiveValue.value!;
  }

  final BuildContext context;
  final T defaultValue;
  final T mobileValue;
  final T tabletValue;
  final T desktopValue;
  late ResponsiveValue _responsiveValue;
  late T value;
}
