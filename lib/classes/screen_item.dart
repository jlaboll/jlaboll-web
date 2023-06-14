import 'package:flutter/material.dart';

class ScreenItem {
  ScreenItem(
      {required this.index,
      required this.sort_order,
      required this.title,
      required this.icon,
      required this.child});
  final int index;
  final int sort_order;
  final String title;
  final IconData icon;
  final Widget child;
}
