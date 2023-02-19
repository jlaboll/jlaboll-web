import 'package:flutter/material.dart';

class ScreenItem {
  ScreenItem({required this.title, required this.icon, required this.child});
  final String title;
  final IconData icon;
  final Widget child;
}
