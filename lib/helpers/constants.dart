import 'package:flutter/material.dart';

const double smallScreenMaxWidth = 780;
const double mediumScreenMaxWidth = 1060;

const double largeScreenToolbarHeight = kToolbarHeight + 10;
const double smallScreenToolbarHeight = 35;

const String homeTitle1 = 'Hey! I am';
const String homeTitle2 = 'Jasen LaBolle';
const String homeTitle3 = 'Full Stack Developer';

class Pair<T1, T2> {
  final T1 obj1;
  final T2 obj2;

  Pair(this.obj1, this.obj2);
}

List<Pair<String, Icon>> myPages = <Pair<String, Icon>>[
  Pair('Home', const Icon(Icons.home)),
  Pair('About', const Icon(Icons.info)),
  Pair('Skills', const Icon(Icons.bolt)),
  Pair('Experience', const Icon(Icons.work)),
  Pair('Projects', const Icon(Icons.code))
];

const List<Map<String, String>> myLinks = <Map<String, String>>[
  {
    'URL': 'https://github.com/jlaboll',
    'iconURL': 'https://img.icons8.com/fluent/50/000000/github.png'
  },
  {
    'URL': 'https://www.linkedin.com/in/jasen-labolle-7a57221a0',
    'iconURL': 'https://img.icons8.com/fluent/50/000000/linkedin.png'
  },
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
