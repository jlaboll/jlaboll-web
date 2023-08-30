import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimpleResponsiveValue<T> {
  SimpleResponsiveValue(
    this.context,
    this.mobileValue,
    this.tabletValue,
    this.desktopValue,
    this.defaultValue, {
    this.mobileHorizValue = null,
    this.tabletHorizValue = null,
    this.desktopHorizValue = null,
    this.defaultHorizValue = null,
  }) {
    this._responsiveValue = ResponsiveValue(
      context,
      conditionalValues: <Condition<T>>[
        Condition<T>.equals(
          name: MOBILE,
          value: mobileValue,
          landscapeValue: mobileHorizValue,
        ),
        Condition<T>.equals(
          name: TABLET,
          value: tabletValue,
          landscapeValue: tabletHorizValue,
        ),
        Condition<T>.equals(
          name: DESKTOP,
          value: desktopValue,
          landscapeValue: desktopHorizValue,
        ),
        Condition<T>.equals(
          name: "4K",
          value: defaultValue,
          landscapeValue: defaultHorizValue,
        ),
      ],
      defaultValue: defaultValue,
    );
    value = _responsiveValue.value!;
  }

  SimpleResponsiveValue<T> withOrientation(
    BuildContext context,
    T mobileValue,
    T tabletValue,
    T desktopValue,
    T defaultValue,
    T? mobileHorizValue,
    T? tabletHorizValue,
    T? desktopHorizValue,
    T? defaultHorizValue,
  ) =>
      SimpleResponsiveValue<T>(
        context,
        mobileValue,
        tabletValue,
        desktopValue,
        defaultValue,
        mobileHorizValue: mobileHorizValue,
        tabletHorizValue: tabletHorizValue,
        desktopHorizValue: desktopHorizValue,
        defaultHorizValue: defaultHorizValue,
      );

  final BuildContext context;
  final T defaultValue;
  final T mobileValue;
  final T tabletValue;
  final T desktopValue;
  final T? defaultHorizValue;
  final T? mobileHorizValue;
  final T? tabletHorizValue;
  final T? desktopHorizValue;
  late ResponsiveValue _responsiveValue;
  late T value;
}
