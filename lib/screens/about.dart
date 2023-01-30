import 'package:flutter/material.dart';

import '../widgets/layout.dart';

class About extends StatelessWidget {
  static List<String> aboutDetails = [
    'I am a Full-Stack Software Developer, graduated December 2020 with a B.S. of Computer Science, and have been working professionally since developing frontend, backend, and devops solutions.',
    'I have a passion for continuing to learn new technologies and solutions, and I am always excited and interested in expanding my skill set. In my professional career I have worked on desktop, mobile, and web frontend applications, as well as backend REST API\'s, and SQL databases.',
    'In my free time, I have been working on a bare metal, high availability, on-premises K8\'s deployment, and exploring Flutter as a single codebase, multi-platform application framework.',
    'I also am a huge fan of hedgehogs, and have a pet hedgehog named Penelope.',
  ];

  @override
  Widget build(BuildContext context) {
    if (Layout.of(context).mobile) {
      return Container();
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'About Me',
            style: TextStyle(
              textBaseline: TextBaseline.ideographic,
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Theme.of(context).colorScheme.onBackground,
              decoration: TextDecoration.underline,
              decorationColor: Theme.of(context).colorScheme.tertiary,
              decorationStyle: TextDecorationStyle.solid,
              decorationThickness: 2,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Image(
                      image: AssetImage('hedgehog.png'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildBody(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBody(BuildContext context) {
    List<Widget> details = [];
    for (var detail in aboutDetails) {
      details.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            detail,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }
    details.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: ElevatedButton(
              child: const Text('Contact Me'),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: ElevatedButton(
              child: const Text('Download Resume'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
    return details;
  }
}
