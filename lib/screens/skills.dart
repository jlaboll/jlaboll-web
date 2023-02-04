import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/screen_widgets/screen_header.dart';
import 'package:jlaboll_web/widgets/skill_button.dart';
import 'package:jlaboll_web/widgets/titled_wrap.dart';

import '../widgets/responsive_layout.dart';

class Skills extends StatelessWidget {
  static List<Map<String, String>> languageLinks = [];

  static List<Map<String, String>> professionalSkillLinks = [
    {
      'link': 'https://www.omnis.net/',
      'local': 't',
      'asset_location': 'omnis_logo.png',
    },
    {
      'link': 'https://emberjs.com/',
      'asset_location':
          'https://raw.githubusercontent.com/ember-learn/ember-website/main/public/images/brand/Ember%20Logos/Icon/e-rounded-icon-4c.png',
    },
    {
      'link': 'https://www.ruby-lang.org/en/',
      'asset_location':
          'https://img.icons8.com/color/512/ruby-programming-language.png',
    },
    {
      'link': 'https://rubyonrails.org/',
      'asset_location': 'https://img.icons8.com/windows/512/ruby-on-rails.png',
    },
    {
      'link': 'https://www.postgresql.org/',
      'asset_location': 'https://img.icons8.com/color/512/postgreesql.png',
    },
    {
      'link': 'https://www.nginx.com/',
      'asset_location': 'https://img.icons8.com/color/512/nginx.png',
    },
    {
      'link': 'https://git-scm.com/',
      'asset_location': 'https://img.icons8.com/color/512/git.png',
    },
    {
      'link':
          'https://developer.android.com/studio?gclid=CjwKCAiArNOeBhAHEiwAze_nKAiVV1fpBD_htubux7YdxxGtHLr3UzsJeO4hmaeTTpan8ZsKkHjBLBoCcG0QAvD_BwE&gclsrc=aw.ds',
      'asset_location':
          'https://img.icons8.com/color/512/android-studio--v3.png',
    },
    {
      'link': 'https://www.jenkins.io/',
      'asset_location': 'https://img.icons8.com/color/512/jenkins.png',
    },
    {
      'link': 'https://www.jetbrains.com/idea/',
      'asset_location': 'https://img.icons8.com/color/512/intellij-idea.png',
    },
    {
      'link': 'https://visualstudio.microsoft.com/',
      'asset_location': 'https://img.icons8.com/color/512/visual-studio.png',
    },
    {
      'link': 'https://www.microsoft.com/en-us/windows?r=1',
      'asset_location': 'https://img.icons8.com/color/512/windows-10.png',
    },
    {
      'link': 'https://ubuntu.com/',
      'asset_location': 'https://img.icons8.com/color/512/linux.png',
    },
    {
      'link': 'https://www.apple.com/macos/ventura/',
      'asset_location': 'https://img.icons8.com/ios-filled/512/mac-os.png',
    },
    {
      'link':
          'https://slack.com/trials?remote_promo=f4d95f0b&utm_medium=ppc&utm_source=google&utm_campaign=ppc_google_amer_en_brand_selfserve_discount&utm_term=Slack_Exact_._slack_._e_._c&utm_content=611662283461&gclid=CjwKCAiArNOeBhAHEiwAze_nKPEFfs8wiHFJsDycsUrwG9u8RaTSKnoTGTjdzwpvXHC1GHSLDwjRnhoCY3kQAvD_BwE&gclsrc=aw.ds',
      'asset_location': 'https://img.icons8.com/color/512/slack.png',
    },
    {
      'link':
          'https://www.atlassian.com/software/jira?&aceid=&adposition=&adgroup=136973856930&campaign=18440774103&creative=639487383004&device=c&keyword=jira&matchtype=e&network=g&placement=&ds_kids=p73335831609&ds_e=GOOGLE&ds_eid=700000001558501&ds_e1=GOOGLE&gclid=CjwKCAiArNOeBhAHEiwAze_nKKbrntXI-rr8GoPJyfP5BNRrnS9H0L_C4lNXy-AeBIVdj_96Et_pvRoCELsQAvD_BwE&gclsrc=aw.ds',
      'asset_location': 'https://img.icons8.com/color/512/jira.png',
    },
  ];

  static List<Map<String, String>> personalSkillLinks = [
    {
      'link':
          'https://flutter.dev/?gclid=CjwKCAiArNOeBhAHEiwAze_nKKLqBvV0XVvshe6vGihjzLCnjawt5Sv4Q5LzUFXx4eiHpOnhlmTJABoCz1kQAvD_BwE&gclsrc=aw.ds',
      'asset_location': 'https://img.icons8.com/color/512/flutter.png',
    },
    {
      'link': 'https://www.ansible.com/',
      'asset_location': 'https://img.icons8.com/color/512/ansible.png',
    },
    {
      'link':
          'https://www.atlassian.com/software/jira?&aceid=&adposition=&adgroup=136973856930&campaign=18440774103&creative=639487383004&device=c&keyword=jira&matchtype=e&network=g&placement=&ds_kids=p73335831609&ds_e=GOOGLE&ds_eid=700000001558501&ds_e1=GOOGLE&gclid=CjwKCAiArNOeBhAHEiwAze_nKKbrntXI-rr8GoPJyfP5BNRrnS9H0L_C4lNXy-AeBIVdj_96Et_pvRoCELsQAvD_BwE&gclsrc=aw.ds',
      'asset_location': 'https://img.icons8.com/color/512/jira.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ScreenHeader('Skills')],
          ),
          TitledWrap(
            title: 'Professional Skills',
            titleFontSize: 25,
            children: List.generate(
              professionalSkillLinks.length,
              (index) => _buildConstrainedSkillSliver(
                SkillButton(
                  link: professionalSkillLinks[index]['link']!,
                  localAsset: professionalSkillLinks[index]['local'] == 't',
                  assetLocation: professionalSkillLinks[index]
                      ['asset_location']!,
                ),
              ),
            ),
          ),
          TitledWrap(
            title: 'Other Skills',
            titleFontSize: 25,
            children: List.generate(
              personalSkillLinks.length,
              (index) => _buildConstrainedSkillSliver(
                SkillButton(
                  link: personalSkillLinks[index]['link']!,
                  localAsset: personalSkillLinks[index]['local'] == 't',
                  assetLocation: personalSkillLinks[index]['asset_location']!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConstrainedSkillSliver(SkillButton child) {
    return ResponsiveLayout(
      maxMediumWidth: 500,
      maxSmallWidth: 300,
      largeChild: ConstrainedBox(
        constraints: BoxConstraints.tight(Size.square(100)),
        child: child,
      ),
      mediumChild: ConstrainedBox(
        constraints: BoxConstraints.tight(Size.square(75)),
        child: child,
      ),
      smallChild: ConstrainedBox(
        constraints: BoxConstraints.tight(Size.square(60)),
        child: child,
      ),
    );
  }
}
