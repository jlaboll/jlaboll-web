import 'package:flutter/material.dart';

class OnPressOpacity extends MaterialStateColor {
  const OnPressOpacity({
    required this.opacity,
    required this.colorValue,
  }) : super(colorValue);

  final double opacity;
  final int colorValue;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return Color(colorValue).withOpacity(opacity);
    }
    return Color(colorValue);
  }
}
