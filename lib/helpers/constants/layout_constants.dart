import 'package:flutter/material.dart';

const double smallScreenMaxWidth = 780;
const double mediumScreenMaxWidth = 1060;

const double largeScreenToolbarHeight = kToolbarHeight + 10;
const double smallScreenToolbarHeight = 35;

double bodyHeight(BuildContext context) =>
    MediaQuery.of(context).size.height - largeScreenToolbarHeight;
