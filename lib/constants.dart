import 'package:flutter/material.dart';
import 'package:jlaboll_web/widgets/stateless/components/about/about.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_nav_button.dart';
import 'package:jlaboll_web/widgets/stateless/components/app/app_text.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/avatar.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/file_download_button.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/page.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/popup_button.dart';
import 'package:jlaboll_web/widgets/stateless/components/common/quick_link_button.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/experience.dart';
import 'package:jlaboll_web/widgets/stateless/components/experience/work_card.dart';
import 'package:jlaboll_web/widgets/stateless/components/home/home.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/project_card.dart';
import 'package:jlaboll_web/widgets/stateless/components/projects/projects.dart';
import 'package:jlaboll_web/widgets/stateless/components/skills/skill_tile.dart';
import 'package:jlaboll_web/widgets/stateless/components/skills/skill_tile_wrap.dart';
import 'package:jlaboll_web/widgets/stateless/components/skills/skills.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Color Schemes //
const kLightColorScheme = ColorScheme(
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

const kDarkColorScheme = ColorScheme(
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

// Doubles //
// App

// Responsive Breakpoints //
List<Breakpoint> kResponsiveBreakpoints = <Breakpoint>[
  const Breakpoint(
    start: 0,
    end: 450,
    name: MOBILE,
  ),
  const Breakpoint(
    start: 451,
    end: 800,
    name: TABLET,
  ),
  const Breakpoint(
    start: 768,
    end: 1920,
    name: DESKTOP,
  ),
  const Breakpoint(
    start: 1921,
    end: double.infinity,
    name: '4K',
  ),
];

List<Condition<double>> kSmallestPaddingConditions = <Condition<double>>[
  Condition<double>.equals(
    name: MOBILE,
    value: 2,
  ),
  Condition<double>.equals(
    name: TABLET,
    value: 3,
  ),
  Condition<double>.equals(
    name: DESKTOP,
    value: 3,
  ),
  Condition<double>.largerThan(
    name: DESKTOP,
    value: 4,
  ),
];

List<Condition<double>> kSmallPaddingConditions = <Condition<double>>[
  Condition<double>.equals(
    name: MOBILE,
    value: 4,
  ),
  Condition<double>.equals(
    name: TABLET,
    value: 5,
  ),
  Condition<double>.equals(
    name: DESKTOP,
    value: 6,
  ),
  Condition<double>.largerThan(
    name: DESKTOP,
    value: 7,
  ),
];

List<Condition<double>> kRegularPaddingConditions = <Condition<double>>[
  Condition<double>.equals(
    name: MOBILE,
    value: 9,
  ),
  Condition<double>.equals(
    name: TABLET,
    value: 11,
  ),
  Condition<double>.equals(
    name: DESKTOP,
    value: 13,
  ),
  Condition<double>.largerThan(
    name: DESKTOP,
    value: 15,
  ),
];

List<Condition<double>> kLargePaddingConditions = <Condition<double>>[
  Condition<double>.equals(
    name: MOBILE,
    value: 18,
  ),
  Condition<double>.equals(
    name: TABLET,
    value: 22,
  ),
  Condition<double>.equals(
    name: DESKTOP,
    value: 26,
  ),
  Condition<double>.largerThan(
    name: DESKTOP,
    value: 30,
  ),
];

// Strings //
// Static strings
final String kSMALLEST = 'SMALLEST';
final String kSMALL = 'SMALL';
final String kREGULAR = 'REGULAR';
final String kLARGE = 'LARGE';

// App
String kAppTitle = 'Jasen LaBolle';
String kDefaultMediaUrl = 'https://media.jlaboll.dev/';
String kLinkedInUrl = 'https://www.linkedin.com/in/jasen-labolle-7a57221a0';
String kGithubUrl = 'https://github.com/jlaboll';

// Home
String kHomeNavLabel = 'Home';
String kHomeAvatarUrl = kDefaultMediaUrl + 'profile_picture.jpg';
String kHomeHeading1 = 'Hey! I am';
String kHomeHeading2 = 'Jasen LaBolle';
String kHomeHeading3a = 'Full Stack Developer // Operations Engineer';
String kHomeHeading3b = 'Full Stack Developer +';
String kHomeHeading4 = 'Operations Engineer';

// About
String kAboutNavLabel = 'About';
String kAboutHeading = 'About Me';
String kAboutImageUrl = kDefaultMediaUrl + 'hedgehog.png';
String kAboutButton1 = 'Contact Me';
String kAboutButton2 = 'Download Resume';
String kAboutPopupTitle = 'Contact Information';
String kAboutLabel1 = 'Phone:';
String kAboutLabel2 = 'Email: ';
String kAboutContact1 = '(217) 721-7655';
String kAboutContact2 = 'jasenlabolle@gmail.com';

// Skills
String kSkillsNavLabel = 'Skills';
String kSkillsHeading = 'Skills';
String kSkillsSubheading1 = 'Professional Skills';
String kSkillsSubheading2 = 'Other Skills';

// Experience
String kExperienceNavLabel = 'Experience';
String kExperienceHeading = 'Work Experience';

// Projects
String kProjectsNavLabel = 'Projects';
String kProjectsHeading = 'Other Projects';

// Icons //
// Home
IconData kHomeNavIcon = Icons.home;
// About
IconData kAboutNavIcon = Icons.info;
// Skills
IconData kSkillsNavIcon = Icons.bolt;
// Experience
IconData kExperienceNavIcon = Icons.work;
// Projects
IconData kProjectsNavIcon = Icons.code;

// String Lists //
// Home
// About
List<String> kAboutDetails = [
  'I am a Full-Stack Software Developer, graduated December 2020 with a B.S. of Computer Science, and have been working professionally since developing frontend, backend, and devops solutions.',
  'I have a passion for continuing to learn new technologies and solutions, and I am always excited and interested in expanding my skill set. In my professional career I have worked on desktop, mobile, and web frontend applications, RESTful API and SQL database backends, as well as various CI/CD tools.',
  'In my free time, I have been working on a few projects. The most challenging was a on-premises bare metal K8\'s deployment with high availability. The cluster stack includes Ceph, MinIO S3, Prometheus, Grafana, Elastic stack, Redis, and PostgreSQL, supporting a On-Prem JetBrains Space deployment.',
  'I have also been exploring Flutter as a single codebase, multi-platform application framework, and some small projects in PostgreSQL and Ruby on Rails.',
  'Beyond development, I love music, games, and I am a huge fan of small animals (especially hedgehogs). I have 7 guinea pigs, and my pet hedgehog is named Penelope.',
];

// Skills
// Experience
List<String> kExperienceSuranDetails = <String>[
  'Worked both independently and in group settings to reach development goals, review code, troubleshoot issues, and share knowledge',
  'Communicated frequently via Slack and Zoom with support, sales, operations, and administrative teams',
  'Worked with Omnis Studio/Ruby on Rails/PostgreSQL/Ember.js/Java to develop new and improve existing features for desktop, mobile, and web as parts of a SaaS application in a Agile development cycle',
  'Wrote and maintained unit and integration tests with OmnisTAP/RSpec/PGTAP/Ember/JUnit',
  'Used Saltstack/Jenkins/Bash to build and maintain CI/CD pipelines for projects',
  'Diagnosed, reported, and resolved issues within PostgreSQL databases using SQL/Perl/PSQL/Bash',
  'Utilized Nagios/Rundeck/SSH to both monitor services and perform disaster recovery for both cloud and bare-metal servers',
  'Improved security to become PCI compliant by masking PAN data from logs, reducing employee access to nodes that handled PCI data, and reducing the scope of maintaining compliance by moving all handling of PAN to a independent project/service',
];

List<String> kExperienceTargetDetails = <String>[
  'Worked in an independent environment to assist customers and manage the electronics, media, and book departments',
  'Prioritized responsibilities that included maintaining inventory accuracy, stocking products, processing deliveries, trainings on  sales trends/new products, and reaching area sales goals',
  'Focused on providing a great customer service experience by dynamically approaching each individual',
];

List<String> kExperienceFyxitDetails = <String>[
  'Worked closely with others in a dynamic environment to solve device issues',
  'Diagnosed device issues that included unexpected crashes, slow performance, or liquid/physical damages; performed repairs on thousands of tickets',
  'Researched and compared vendors of replacement parts to ensure customers were receiving quality hardware at competitive prices',
  'Stayed up-to-date on new products and competitor services/pricing',
  'Performed on-site IT service/troubleshooting for both businesses and individuals',
];

// Projects
List<String> kProjectsJlabollDetails = <String>[
  'The goal of this project was to demonstrate front-end development experience, while also supplementing a traditional resume.',
  'I chose to start the project in Flutter after learning of Flutter\'s ability to build native multi-platform applications in a single codebase.',
  'I also decided I would host the site on-premises behind a reverse proxy/load balancer as not to conflict with other services on the network.',
  'I learned a lot working on this project, and have enjoyed returning to it every few months to apply new ideas and refactor areas I feel I can improve.',
  'This is my longest running project, starting under a different repository and language in 2021, but seeing the most drastic improvements starting Jan. 2023.',
];

List<String> kProjectsOnPremKubeDetails = <String>[
  'The goal of this project was to deploy a production-level on-premises instance of Jetbrains Space.',
  'Documentation suggested production-level deployments had to run on Kubernetes, which became the focus of the project from that point.',
  'I had to build a understanding of Kubernetes from scratch, only being familiar with Docker containers previously.',
  'After initially exploring cluster initialization with a custom ansible playbook, I ended up initializing with Kubespray.',
  'Then I again tried my hand at creating deployments on the cluster with Ansible before learning about Helm.',
  'Once I had settled into a initialization/deployment strategy, I began learning about the different deployments I would need for a Space deployment.',
  'The tech stack on the cluster currently includes: Traefik, Ceph, Redis, PostgreSQL, ElasticSearch, MinIO, Prometheus, Grafana, and Jetbrains Space.',
  'This was the most difficult and rewarding project I have worked on for personal use, and I hope to continue utilizing the cluster and refining the existing deployments to provide a container-based solution for all my on-premises projects.'
];

List<String> kProjectsPostgresDetails = <String>[
  'The goal of this project was to exercise my knowledge of PostgreSQL and PSQL scripting.',
];

// Other Constants //
// Home
// About
// Skills
// Experience
List<Map<String, String>> kExperienceCardMapList = <Map<String, String>>[
  {
    "image": kDefaultMediaUrl + 'suran.jpg',
    "title": 'Full Stack Developer // Operations Engineer',
    "company": 'Suran Systems Inc.',
    "start": 'Mar. 2021',
    "end": 'Present',
    "detail_title": 'Responsibilities at Suran Systems',
    "detail_map_key": 'suran',
    "url": 'https://www.suran.com/',
  },
  {
    "image": kDefaultMediaUrl + 'target.png',
    "title": 'Specialty Sales',
    "company": 'Target',
    "start": 'Sept. 2020',
    "end": 'Jan. 2021',
    "detail_title": 'Responsibilities at Target',
    "detail_map_key": 'target',
    "url": 'https://www.target.com/',
  },
  {
    "image": kDefaultMediaUrl + 'fyxit.png',
    "title": 'Manager // Apple Technician',
    "company": 'Suran Systems Inc.',
    "start": 'July 2017',
    "end": 'May 2020',
    "detail_title": 'Responsibilities at Fyxit',
    "detail_map_key": 'fyxit',
    "url": 'https://www.fyxit.net/',
  },
];

Map<String, List<String>> kExperienceCardMapListDetails = {
  "suran": kExperienceSuranDetails,
  "target": kExperienceTargetDetails,
  "fyxit": kExperienceFyxitDetails,
};

// Projects
List<Map<String, String>> kProjectsCardMapList = <Map<String, String>>[
  {
    "title": 'Personal Website',
    "language": 'Flutter (Dart)',
    "screenshot": kDefaultMediaUrl + 'personal_site_screenshot.png',
    "demo": 'https://www.jlaboll.dev',
    "repo": 'https://github.com/jlaboll/jlaboll-web',
    "about_title": 'About jlabolle.dev',
    "detail_map_key": 'jlaboll',
  },
  {
    "title": 'On-Premises Kubernetes Deployment',
    "language": 'Kubernetes / Helm / Bash',
    "screenshot": kDefaultMediaUrl + 'kubernetes_space.png',
    "demo": 'https://portal.hedgehogcode.dev',
    "repo": '',
    "about_title": 'About On-Premises Kubernetes Cluster',
    "detail_map_key": 'kube',
  },
  {
    "title": 'Sample PostgreSQL Database, Queries, and Scripting',
    "language": 'PostgreSQL',
    "screenshot": kDefaultMediaUrl + 'database.png',
    "demo": '',
    "repo": 'https://github.com/jlaboll/postgresql_samples',
    "about_title": 'About Sample PostgreSQL Script',
    "detail_map_key": 'postgres',
  },
];

Map<String, List<String>> kProjectsCardMapListDetails = {
  "jlaboll": kProjectsJlabollDetails,
  "kube": kProjectsOnPremKubeDetails,
  "postgres": kProjectsPostgresDetails,
};

// Widget Lists //
// Home
List<Widget> kHorizontalHomeChildren = <Widget>[
  CAAppText(
    type: CAAppTextStyle.SUBTITLE_SECONDARY,
    text: kHomeHeading1,
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.TITLE,
    text: kHomeHeading2,
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.SUBTITLE,
    text: kHomeHeading3a,
    shouldBold: true,
  ),
  Padding(padding: EdgeInsets.all(10)),
  CCAvatar(
    url: kHomeAvatarUrl,
  ),
];

List<Widget> kVerticalHomeChildren = <Widget>[
  CAAppText(
    type: CAAppTextStyle.SUBTITLE_SECONDARY,
    text: kHomeHeading1,
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.TITLE,
    text: kHomeHeading2,
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.SUBTITLE,
    text: kHomeHeading3b,
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.SUBTITLE,
    text: kHomeHeading4,
    shouldBold: true,
  ),
  Padding(padding: EdgeInsets.all(10)),
  CCAvatar(
    url: kHomeAvatarUrl,
  ),
];

// About
List<Widget> kAboutButtons = <Widget>[
  CCPopupButton(
    buttonText: kAboutButton1,
    popupTitle: kAboutPopupTitle,
    popupChildren: <Widget>[
      IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: kAboutLabel1,
                  ),
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: kAboutContact1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: kAboutLabel2,
                  ),
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: kAboutContact2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
  CCFileDownloadButton(
    buttonText: kAboutButton2,
    fileUrl: kDefaultMediaUrl + 'Jasen_LaBolle.pdf',
  ),
];

// Skills
List<Widget> kProfessionalSkillsLanguages = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://www.omnis.net/',
    skillIconUrl: kDefaultMediaUrl + 'omnis.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://emberjs.com/',
    skillIconUrl: kDefaultMediaUrl + 'ember.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.ruby-lang.org/en/',
    skillIconUrl: kDefaultMediaUrl + 'ruby.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://rubyonrails.org/',
    skillIconUrl: kDefaultMediaUrl + 'rails.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.postgresql.org/',
    skillIconUrl: kDefaultMediaUrl + 'postgresql.png',
  ),
];

List<Widget> kProfessionalSkillsInfrastructure = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://www.nginx.com/',
    skillIconUrl: kDefaultMediaUrl + 'nginx.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.jenkins.io/',
    skillIconUrl: kDefaultMediaUrl + 'jenkins.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://docs.saltproject.io/en/latest/contents.html',
    skillIconUrl: kDefaultMediaUrl + 'saltstack.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.rundeck.com/',
    skillIconUrl: kDefaultMediaUrl + 'rundeck.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.nagios.org/',
    skillIconUrl: kDefaultMediaUrl + 'nagios.png',
  ),
];

List<Widget> kProfessionalSkillsTools = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://slack.com/',
    skillIconUrl: 'https://img.icons8.com/color/512/slack.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.atlassian.com/software/jira/',
    skillIconUrl: kDefaultMediaUrl + 'jira.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.jetbrains.com/idea/',
    skillIconUrl: kDefaultMediaUrl + 'intellij.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://visualstudio.microsoft.com/',
    skillIconUrl: kDefaultMediaUrl + 'visual_studio.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://git-scm.com/',
    skillIconUrl: kDefaultMediaUrl + 'git.png',
  ),
];

List<Widget> kOtherSkillsLanguages = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://flutter.dev/',
    skillIconUrl: kDefaultMediaUrl + 'flutter.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://dev.java/',
    skillIconUrl: kDefaultMediaUrl + 'java.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.mysql.com/',
    skillIconUrl: kDefaultMediaUrl + 'mysql.webp',
  ),
  CSSkillTile(
    skillWebUrl: 'https://learn.microsoft.com/en-us/cpp/cpp/',
    skillIconUrl: kDefaultMediaUrl + 'cpp.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://react.dev/',
    skillIconUrl: kDefaultMediaUrl + 'react.png',
  ),
];

List<Widget> kOtherSkillsInfrastructure = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://kubernetes.io/',
    skillIconUrl: kDefaultMediaUrl + 'kubernetes.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.docker.com/',
    skillIconUrl: kDefaultMediaUrl + 'docker.webp',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.haproxy.com/',
    skillIconUrl: kDefaultMediaUrl + 'haproxy.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.ansible.com/',
    skillIconUrl: kDefaultMediaUrl + 'ansible.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://developer.hashicorp.com/terraform/intro',
    skillIconUrl: kDefaultMediaUrl + 'terraform.png',
  ),
];

List<List<Widget>> kProfessionalSkillsTiles = <List<Widget>>[
  kProfessionalSkillsLanguages,
  kProfessionalSkillsInfrastructure,
  kProfessionalSkillsTools,
];

List<List<Widget>> kOtherSkillsTiles = <List<Widget>>[
  kOtherSkillsLanguages,
  kOtherSkillsInfrastructure,
];

List<Widget> kSkillsChildren = <Widget>[
  CSSkillTileWrap(
    title: kSkillsSubheading1,
    tileChildrenList: kProfessionalSkillsTiles.fold<List<Widget>>(
      <Widget>[],
      (previousValue, element) {
        previousValue.insertAll(previousValue.length, element);
        return previousValue;
      },
    ),
  ),
  CSSkillTileWrap(
    title: kSkillsSubheading2,
    tileChildrenList: kOtherSkillsTiles.fold<List<Widget>>(
      <Widget>[],
      (previousValue, element) {
        previousValue.insertAll(previousValue.length, element);
        return previousValue;
      },
    ),
  ),
];

// Experience
List<Widget> kExperienceChildren = List.generate(
  kExperienceCardMapList.length,
  (index) => CEWorkCard(
    imageUrl: kExperienceCardMapList[index]["image"]!,
    position: kExperienceCardMapList[index]["title"]!,
    company: kExperienceCardMapList[index]["company"]!,
    startDate: kExperienceCardMapList[index]["start"]!,
    endDate: kExperienceCardMapList[index]["end"]!,
    detailsTitle: kExperienceCardMapList[index]["detail_title"]!,
    details: kExperienceCardMapListDetails[kExperienceCardMapList[index]
        ["detail_map_key"]!]!,
    websiteUrl: kExperienceCardMapList[index]["url"]!,
  ),
);

// Projects
List<Widget> kProjectsChildren = List.generate(
  kProjectsCardMapList.length,
  (index) => CPProjectCard(
    title: kProjectsCardMapList[index]["title"]!,
    language: kProjectsCardMapList[index]["language"]!,
    demoScreenshotLink: kProjectsCardMapList[index]["screenshot"]!,
    demoLink: kProjectsCardMapList[index]["demo"]!,
    repoLink: kProjectsCardMapList[index]["repo"]!,
    aboutTitle: kProjectsCardMapList[index]["about_title"]!,
    about: kProjectsCardMapListDetails[kProjectsCardMapList[index]
        ["detail_map_key"]!]!,
  ),
);

// App
List<Widget> kQuickLinks = <Widget>[
  CCQuickLinkButton(
    url: kGithubUrl,
    iconUrl: kDefaultMediaUrl + 'github_icon.png',
  ),
  CCQuickLinkButton(
    url: kLinkedInUrl,
    iconUrl: kDefaultMediaUrl + 'linkedin_icon.png',
  ),
];

List<CCPage> kPages = <CCPage>[
  CCPage(
    navButton: CAAppNavButton(
      index: 0,
      text: kHomeNavLabel,
      icon: kHomeNavIcon,
    ),
    content: CHHome(
      horizontalHomeChildren: kHorizontalHomeChildren,
      verticalHomeChildren: kVerticalHomeChildren,
    ),
  ),
  CCPage(
    navButton: CAAppNavButton(
      index: 1,
      text: kAboutNavLabel,
      icon: kAboutNavIcon,
    ),
    content: CAbAbout(
      title: kAboutHeading,
      imageUrl: kAboutImageUrl,
      details: kAboutDetails,
      buttons: kAboutButtons,
    ),
  ),
  CCPage(
    navButton: CAAppNavButton(
      index: 2,
      text: kSkillsNavLabel,
      icon: kSkillsNavIcon,
    ),
    content: CSSkills(
      title: kSkillsHeading,
      children: kSkillsChildren,
    ),
  ),
  CCPage(
    navButton: CAAppNavButton(
      index: 3,
      text: kExperienceNavLabel,
      icon: kExperienceNavIcon,
    ),
    content: CEExperience(
      title: kExperienceHeading,
      children: kExperienceChildren,
    ),
  ),
  CCPage(
    navButton: CAAppNavButton(
      index: 4,
      text: kProjectsNavLabel,
      icon: kProjectsNavIcon,
    ),
    content: CPProjects(
      title: kProjectsHeading,
      children: kProjectsChildren,
    ),
  ),
];
