import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/screen_widgets/about_buttons.dart';
import 'package:jlaboll_web/widgets/screen_widgets/screen_header.dart';

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
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ScreenHeader('About Me'),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 75, maxHeight: 75),
                child: Image(
                  image: AssetImage('hedgehog.png'),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  aboutDetails.length + 1,
                  (index) {
                    if (index >= aboutDetails.length) {
                      return AboutButtons();
                    } else {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          aboutDetails[index],
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: Layout.of(context).mobile ? 12 : 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ScreenHeader('About Me'),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: 225, maxHeight: 225),
                      child: Image(
                        image: AssetImage('hedgehog.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          aboutDetails.length + 1,
                          (index) {
                            if (index >= aboutDetails.length) {
                              return AboutButtons();
                            } else {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  aboutDetails[index],
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontSize:
                                        Layout.of(context).mobile ? 12 : 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
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
}
