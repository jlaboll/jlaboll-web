import 'package:flutter/material.dart';

const double smallScreenMaxWidth = 780;
const double mediumScreenMaxWidth = 1060;

const double largeScreenToolbarHeight = kToolbarHeight + 10;
const double smallScreenToolbarHeight = 35;

const String homeTitle1 = 'Hey! I am';
const String homeTitle2 = 'Jasen LaBolle';
const String homeTitle3 = 'Full Stack Developer';

const List<String> myPages = <String>[
  'Home',
  'About',
  'Skills',
  'Experience',
  'Projects'
];

const List<Map<String, String>> myLinks = <Map<String, String>>[
  {
    'URL': 'https://github.com/jlaboll',
    'iconURL': 'https://img.icons8.com/fluent/50/000000/github.png'
  },
  {'URL': '', 'iconURL': ''},
];

const List<Map<String, List<String>>> myWorkHistory =
    <Map<String, List<String>>>[
  {
    'url': [''],
    'title': ['Suran Systems, Inc.'],
    'position': ['Full Stack Developer'],
    'started': [''],
    'ended': [''],
    'details': ['']
  },
];

const List<String> myAbout = <String>[
  '',
];
