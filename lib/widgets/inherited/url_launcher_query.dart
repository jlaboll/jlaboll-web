import 'dart:html' as Html;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherQuery extends InheritedWidget {
  UrlLauncherQuery({super.key, required super.child});

  static UrlLauncherQuery? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UrlLauncherQuery>();
  }

  static UrlLauncherQuery of(BuildContext context) {
    final UrlLauncherQuery? result = maybeOf(context);
    assert(result != null, 'No UrlLauncherQuery found in context');
    return context.dependOnInheritedWidgetOfExactType<UrlLauncherQuery>()!;
  }

  Future<void> launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      SnackBar(content: Text('Couldn\'t open $url'));
      throw 'Couldn\'t launch URL: $url';
    }
  }

  void download(String url) async {
    Html.AnchorElement anchor = new Html.AnchorElement(href: url);
    anchor.download = url;
    anchor.click();
    anchor.remove();
  }

  @override
  bool updateShouldNotify(UrlLauncherQuery oldWidget) => false;
}
