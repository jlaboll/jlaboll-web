import 'package:flutter/material.dart';
import 'package:jlaboll_web/packages/helpers/methods.dart';
import 'package:jlaboll_web/widgets/image_loading_animator.dart';

class WorkCard extends StatelessWidget {
  const WorkCard(
      {required this.positionTitle,
      required this.companyName,
      required this.companyLogoUrl,
      required this.companyWebsite,
      required this.workResponsibilities});

  final String positionTitle;
  final String companyName;
  final ImageProvider<Object> companyLogoUrl;
  final String companyWebsite;
  final List<String> workResponsibilities;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: FittedBox(
        child: Material(
          borderRadius: BorderRadius.circular(5),
          color: Color(Theme.of(context)
              .colorScheme
              .surfaceVariant
              .withAlpha(127)
              .value),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: ImageLoadingAnimator(
                  imageProvider: companyLogoUrl,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      positionTitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Text(
                      companyName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        workResponsibilities.length,
                        (index) => Text(
                          workResponsibilities[index],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Theme.of(context)
                            .colorScheme
                            .tertiary
                            .withAlpha(127);
                      }
                      return Theme.of(context)
                          .colorScheme
                          .tertiary
                          .withAlpha(0);
                    },
                  ),
                ),
                onPressed: () => launchURL(companyWebsite),
                child: Icon(Icons.open_in_new,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
