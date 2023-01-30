import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/work_card.dart';

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Work Experience',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Theme.of(context).colorScheme.onBackground,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: Theme.of(context).colorScheme.tertiary,
            decorationThickness: 2,
          ),
        ),
        WorkCard(
          positionTitle: 'Full Stack Developer',
          companyName: 'Suran Systems Inc.',
          companyLogoUrl: AssetImage('suranlogon2019.jpg'),
          companyWebsite: 'https://www.suran.com/',
          workResponsibilities: <String>['Stuff'],
        ),
      ],
    );
  }
}
