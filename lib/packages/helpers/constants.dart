import 'package:flutter/material.dart';
import 'package:jlaboll_web/classes/screen_item.dart';
import 'package:jlaboll_web/classes/skill_item.dart';
import 'package:jlaboll_web/classes/title_item.dart';
import 'package:jlaboll_web/classes/work_item.dart';
import 'package:jlaboll_web/screens/desktop/desktop_about.dart';
import 'package:jlaboll_web/screens/desktop/desktop_home.dart';
import 'package:jlaboll_web/screens/desktop/desktop_projects.dart';
import 'package:jlaboll_web/screens/desktop/desktop_skills.dart';
import 'package:jlaboll_web/screens/desktop/desktop_work.dart';
import 'package:jlaboll_web/screens/mobile/mobile_about.dart';
import 'package:jlaboll_web/screens/mobile/mobile_home.dart';
import 'package:jlaboll_web/screens/mobile/mobile_projects.dart';
import 'package:jlaboll_web/screens/mobile/mobile_skills.dart';
import 'package:jlaboll_web/screens/mobile/mobile_work.dart';

import '../../screens/app_screen.dart';

const double MOBILE_BREAKPOINT = 280;
const double TABLET_BREAKPOINT = 800;
const double DESKTOP_BREAKPOINT = 1000;
const double MAX_RESOLUTION_BREAKPOINT = 2460;

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF4355B9),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDEE0FF),
  onPrimaryContainer: Color(0xFF00105C),
  secondary: Color(0xFF006971),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF88F3FF),
  onSecondaryContainer: Color(0xFF001F23),
  tertiary: Color(0xFF006C4D),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF88F8C8),
  onTertiaryContainer: Color(0xFF002115),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFEFBFF),
  onBackground: Color(0xFF1B1B1F),
  surface: Color(0xFFFEFBFF),
  onSurface: Color(0xFF1B1B1F),
  surfaceVariant: Color(0xFFE3E1EC),
  onSurfaceVariant: Color(0xFF46464F),
  outline: Color(0xFF767680),
  onInverseSurface: Color(0xFFF3F0F4),
  inverseSurface: Color(0xFF303034),
  inversePrimary: Color(0xFFBAC3FF),
  shadow: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFBAC3FF),
  onPrimary: Color(0xFF08218A),
  primaryContainer: Color(0xFF293CA0),
  onPrimaryContainer: Color(0xFFDEE0FF),
  secondary: Color(0xFF4DD8E7),
  onSecondary: Color(0xFF00363B),
  secondaryContainer: Color(0xFF004F56),
  onSecondaryContainer: Color(0xFF88F3FF),
  tertiary: Color(0xFF6ADBAD),
  onTertiary: Color(0xFF003826),
  tertiaryContainer: Color(0xFF005139),
  onTertiaryContainer: Color(0xFF88F8C8),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1B1B1F),
  onBackground: Color(0xFFE4E1E6),
  surface: Color(0xFF1B1B1F),
  onSurface: Color(0xFFE4E1E6),
  surfaceVariant: Color(0xFF46464F),
  onSurfaceVariant: Color(0xFFC7C5D0),
  outline: Color(0xFF90909A),
  onInverseSurface: Color(0xFF1B1B1F),
  inverseSurface: Color(0xFFE4E1E6),
  inversePrimary: Color(0xFF4355B9),
  shadow: Color(0xFF000000),
);

List<ScreenItem> screens = <ScreenItem>[
  ScreenItem(
    index: 1,
    sort_order: 1,
    title: 'Home',
    icon: Icons.home,
    child: AppScreen(
      mobileChild: MobileHome(),
      desktopChild: DesktopHome(),
    ),
  ),
  ScreenItem(
    index: 2,
    sort_order: 2,
    title: 'About',
    icon: Icons.info,
    child: AppScreen(
      mobileChild: MobileAbout(),
      desktopChild: DesktopAbout(),
    ),
  ),
  ScreenItem(
    index: 3,
    sort_order: 3,
    title: 'Skills',
    icon: Icons.bolt,
    child: AppScreen(
      mobileChild: MobileSkills(),
      desktopChild: DesktopSkills(),
    ),
  ),
  ScreenItem(
    index: 4,
    sort_order: 4,
    title: 'Work',
    icon: Icons.work,
    child: AppScreen(
      mobileChild: MobileWork(),
      desktopChild: DesktopWork(),
    ),
  ),
  ScreenItem(
    index: 5,
    sort_order: 5,
    title: 'Projects',
    icon: Icons.code,
    child: AppScreen(
      mobileChild: MobileProjects(),
      desktopChild: DesktopProjects(),
    ),
  ),
];

List<TitleItem> titles = <TitleItem>[
  TitleItem(
    screen_item_index: 1,
    sort_order: 1,
    title: 'Hey! I am',
    style: TitleStyle.BOLD_SUBTITLE_SECONDARY,
  ),
  TitleItem(
    screen_item_index: 1,
    sort_order: 2,
    title: 'Jasen LaBolle',
    style: TitleStyle.BOLD_TITLE,
  ),
  TitleItem(
    screen_item_index: 1,
    sort_order: 3,
    title: 'Full Stack Developer',
    style: TitleStyle.BOLD_SUBTITLE,
  ),
  TitleItem(
    screen_item_index: 2,
    sort_order: 1,
    title: 'About Me',
    style: TitleStyle.BOLD_DECORATED_TITLE,
  ),
  TitleItem(
    screen_item_index: 3,
    sort_order: 1,
    title: 'Skills',
    style: TitleStyle.BOLD_DECORATED_TITLE,
  ),
  TitleItem(
    screen_item_index: 3,
    sort_order: 2,
    title: 'Professional Skills',
    style: TitleStyle.DECORATED_SUBTITLE,
  ),
  TitleItem(
    screen_item_index: 3,
    sort_order: 3,
    title: 'Other Skills',
    style: TitleStyle.DECORATED_SUBTITLE,
  ),
  TitleItem(
    screen_item_index: 4,
    sort_order: 1,
    title: 'Work Experience',
    style: TitleStyle.BOLD_DECORATED_TITLE,
  ),
];

List<String> aboutDetails = [
  'I am a Full-Stack Software Developer, graduated December 2020 with a B.S. of Computer Science, and have been working professionally since developing frontend, backend, and devops solutions.',
  'I have a passion for continuing to learn new technologies and solutions, and I am always excited and interested in expanding my skill set. In my professional career I have worked on desktop, mobile, and web frontend applications, as well as backend REST API\'s, and SQL databases.',
  'In my free time, I have been working on a bare metal, high availability, on-premises K8\'s deployment, and exploring Flutter as a single codebase, multi-platform application framework.',
  'I also am a huge fan of hedgehogs, and have a pet hedgehog named Penelope.',
];

List<SkillItem> professionalSkillsLanguages = <SkillItem>[
  SkillItem(
    link: 'https://www.omnis.net/',
    icon_url: 'https://cdn.hedgehogcode.dev/omnis.png',
  ),
  SkillItem(
    link: 'https://emberjs.com/',
    icon_url:
        'https://raw.githubusercontent.com/ember-learn/ember-website/main/public/images/brand/Ember%20Logos/Icon/e-rounded-icon-4c.png',
  ),
  SkillItem(
    link: 'https://www.ruby-lang.org/en/',
    icon_url: 'https://img.icons8.com/color/512/ruby-programming-language.png',
  ),
  SkillItem(
    link: 'https://rubyonrails.org/',
    icon_url: 'https://img.icons8.com/windows/512/ruby-on-rails.png',
  ),
  SkillItem(
    link: 'https://www.postgresql.org/',
    icon_url: 'https://img.icons8.com/color/512/postgreesql.png',
  ),
];

List<SkillItem> professionalSkillsInfrastructure = <SkillItem>[
  SkillItem(
    link: 'https://www.nginx.com/',
    icon_url: 'https://img.icons8.com/color/512/nginx.png',
  ),
  SkillItem(
    link: 'https://www.jenkins.io/',
    icon_url: 'https://img.icons8.com/color/512/jenkins.png',
  ),
  SkillItem(
    link: 'https://docs.saltproject.io/en/latest/contents.html',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.rundeck.com/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.nagios.org/',
    icon_url: '',
  ),
];

List<SkillItem> professionalSkillsTools = <SkillItem>[
  SkillItem(
    link: 'https://slack.com/',
    icon_url: 'https://img.icons8.com/color/512/slack.png',
  ),
  SkillItem(
    link: 'https://www.atlassian.com/software/jira/',
    icon_url: 'https://img.icons8.com/color/512/jira.png',
  ),
  SkillItem(
    link: 'https://www.jetbrains.com/idea/',
    icon_url: 'https://img.icons8.com/color/512/intellij-idea.png',
  ),
  SkillItem(
    link: 'https://visualstudio.microsoft.com/',
    icon_url: 'https://img.icons8.com/color/512/visual-studio.png',
  ),
  SkillItem(
    link: 'https://git-scm.com/',
    icon_url: 'https://img.icons8.com/color/512/git.png',
  ),
];

List<SkillItem> otherSkillsLanguages = <SkillItem>[
  SkillItem(
    link: 'https://flutter.dev/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://dev.java/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.mysql.com/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://learn.microsoft.com/en-us/cpp/cpp/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://react.dev/',
    icon_url: '',
  ),
];

List<SkillItem> otherSkillsInfrastructure = <SkillItem>[
  SkillItem(
    link: 'https://kubernetes.io/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.docker.com/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.haproxy.com/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://www.ansible.com/',
    icon_url: '',
  ),
  SkillItem(
    link: 'https://developer.hashicorp.com/terraform/intro',
    icon_url: '',
  ),
];

// List<SkillItem> otherSkillsTools = <SkillItem>[
//   SkillItem(
//     link: '',
//     icon_url: '',
//   ),
// ];

List<WorkItem> workExperience = <WorkItem>[
  WorkItem(
    position: 'Operations Engineer',
    company: 'Suran Systems Inc.',
    company_logo_url: 'https://cdn.hedgehogcode.dev/suran.jpg',
    company_url: 'https://www.suran.com/',
    start_date: 'March 2021',
    end_date: 'Current',
    responsibilities: <String>['My job...'],
  ),
];

List<Map<String, String>> professionalSkillLinks = [
  {
    'link': 'https://www.omnis.net/',
    'asset_location': 'https://cdn.hedgehogcode.dev/omnis.png',
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
    'asset_location': 'https://img.icons8.com/color/512/android-studio--v3.png',
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

List<Map<String, String>> personalSkillLinks = [
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

String aboutImageUrl = "https://cdn.hedgehogcode.dev/hedgehog.png";
String homeImageUrl = "https://cdn.hedgehogcode.dev/profile.jpg";
