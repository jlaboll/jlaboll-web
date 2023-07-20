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
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

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
const double kScaleWidthMobile = 360;
const double kScaleWidthTablet = 864;
const double kScaleWidthDesktop = 1366;
const double kScaleWidthUHD = 1920;

const double kMinBreakpointMobile = 0;
const double kMinBreakpointTablet = 451;
const double kMinBreakpointDesktop = 768;
const double kMinBreakpointUHD = 1921;

const double kMaxBreakpointMobile = 450;
const double kMaxBreakpointTablet = 800;
const double kMaxBreakpointDesktop = 1920;
const double kMaxBreakpointUHD = double.infinity;

// Responsive Breakpoints //
List<Breakpoint> kResponsiveBreakpoints = <Breakpoint>[
  const Breakpoint(
      start: kMinBreakpointMobile, end: kMaxBreakpointMobile, name: MOBILE),
  const Breakpoint(
      start: kMinBreakpointTablet, end: kMaxBreakpointTablet, name: TABLET),
  const Breakpoint(
      start: kMinBreakpointDesktop, end: kMaxBreakpointDesktop, name: DESKTOP),
  const Breakpoint(start: kMinBreakpointUHD, end: kMaxBreakpointUHD, name: '4K')
];

// Strings //
// App
String kAppTitle = 'Jasen LaBolle';
String kDefaultMediaUrl = 'https://media.hedgehogcode.dev/';

// Home
String kHomeNavLabel = 'Home';
String kHomeAvatarUrl = kDefaultMediaUrl + 'profile.jpg';
String kHomeHeading1 = 'Hey! I am';
String kHomeHeading2 = 'Jasen LaBolle';
String kHomeHeading3 = 'Full Stack Developer';

// About
String kAboutNavLabel = 'About';
String kAboutHeading = 'About Me';
String kAboutImageUrl = kDefaultMediaUrl + 'hedgehog.png';
String kAboutButton1 = 'Contact Me';
String kAboutButton2 = 'Download Resume';

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
  'I have a passion for continuing to learn new technologies and solutions, and I am always excited and interested in expanding my skill set. In my professional career I have worked on desktop, mobile, and web frontend applications, as well as backend REST API\'s, and SQL databases.',
  'In my free time, I have been working on a bare metal, high availability, on-premises K8\'s deployment, and exploring Flutter as a single codebase, multi-platform application framework.',
  'I also am a huge fan of hedgehogs, and have a pet hedgehog named Penelope.',
];

// Skills
// Experience
// Projects

// Widget Lists //
// Home
List<Widget> kHomeChildren = <Widget>[
  CAAppText(
    type: CAAppTextStyle.SUBTITLE_SECONDARY,
    text: 'Hey! I am',
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.TITLE,
    text: 'Jasen LaBolle',
    shouldBold: true,
  ),
  CAAppText(
    type: CAAppTextStyle.SUBTITLE,
    text: 'Full Stack Developer',
    shouldBold: true,
  ),
  Padding(padding: EdgeInsets.all(10)),
  CCAvatar(
    url: kDefaultMediaUrl + 'profile.jpg',
  ),
];

// About
List<Widget> kAboutButtons = <Widget>[
  CCPopupButton(
    buttonText: 'Contact Me',
    popupTitle: 'Contact Information',
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
                    text: 'Phone:',
                  ),
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: '(217) 721-7655',
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
                    text: 'Email:',
                  ),
                  CAAppText(
                    type: CAAppTextStyle.BODY,
                    text: 'jasenlabolle@gmail.com',
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
    buttonText: 'Download Resume',
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
    skillIconUrl:
        'https://raw.githubusercontent.com/ember-learn/ember-website/main/public/images/brand/Ember%20Logos/Icon/e-rounded-icon-4c.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.ruby-lang.org/en/',
    skillIconUrl:
        'https://img.icons8.com/color/512/ruby-programming-language.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://rubyonrails.org/',
    skillIconUrl: 'https://img.icons8.com/windows/512/ruby-on-rails.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.postgresql.org/',
    skillIconUrl: 'https://img.icons8.com/color/512/postgreesql.png',
  ),
];

List<Widget> kProfessionalSkillsInfrastructure = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://www.nginx.com/',
    skillIconUrl: 'https://img.icons8.com/color/512/nginx.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.jenkins.io/',
    skillIconUrl: 'https://img.icons8.com/color/512/jenkins.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://docs.saltproject.io/en/latest/contents.html',
    skillIconUrl:
        'https://cdn.icon-icons.com/icons2/2389/PNG/512/saltstack_logo_icon_144913.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.rundeck.com/',
    skillIconUrl:
        'https://cdn.icon-icons.com/icons2/2699/PNG/512/rundeck_logo_icon_170767.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.nagios.org/',
    skillIconUrl:
        'https://cdn.icon-icons.com/icons2/2699/PNG/512/nagios_logo_icon_169936.png',
  ),
];

List<Widget> kProfessionalSkillsTools = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://slack.com/',
    skillIconUrl: 'https://img.icons8.com/color/512/slack.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.atlassian.com/software/jira/',
    skillIconUrl: 'https://img.icons8.com/color/512/jira.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.jetbrains.com/idea/',
    skillIconUrl: 'https://img.icons8.com/color/512/intellij-idea.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://visualstudio.microsoft.com/',
    skillIconUrl: 'https://img.icons8.com/color/512/visual-studio.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://git-scm.com/',
    skillIconUrl: 'https://img.icons8.com/color/512/git.png',
  ),
];

List<Widget> kOtherSkillsLanguages = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://flutter.dev/',
    skillIconUrl:
        'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://dev.java/',
    skillIconUrl: 'https://cdn-icons-png.flaticon.com/512/5968/5968282.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.mysql.com/',
    skillIconUrl:
        'https://cdn.iconscout.com/icon/free/png-256/free-mysql-21-1174941.png?f=webp',
  ),
  CSSkillTile(
    skillWebUrl: 'https://learn.microsoft.com/en-us/cpp/cpp/',
    skillIconUrl:
        'https://user-images.githubusercontent.com/42747200/46140125-da084900-c26d-11e8-8ea7-c45ae6306309.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://react.dev/',
    skillIconUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1150px-React-icon.svg.png',
  ),
];

List<Widget> kOtherSkillsInfrastructure = <Widget>[
  CSSkillTile(
    skillWebUrl: 'https://kubernetes.io/',
    skillIconUrl:
        'https://upload.wikimedia.org/wikipedia/labs/thumb/b/ba/Kubernetes-icon-color.svg/2110px-Kubernetes-icon-color.svg.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.docker.com/',
    skillIconUrl:
        'https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.haproxy.com/',
    skillIconUrl:
        'https://cdn.icon-icons.com/icons2/2699/PNG/512/haproxy_logo_icon_171017.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://www.ansible.com/',
    skillIconUrl:
        'https://cdn.icon-icons.com/icons2/2148/PNG/512/ansible_icon_132595.png',
  ),
  CSSkillTile(
    skillWebUrl: 'https://developer.hashicorp.com/terraform/intro',
    skillIconUrl:
        'https://static-00.iconduck.com/assets.00/file-type-terraform-icon-455x512-csyun60o.png',
  ),
];

List<Widget> kSkillsChildren = <Widget>[
  CSSkillTileWrap(
    title: kSkillsSubheading1,
    tileChildrenLists: <List<Widget>>[
      kProfessionalSkillsLanguages,
      kProfessionalSkillsInfrastructure,
      kProfessionalSkillsTools
    ],
  ),
  CSSkillTileWrap(
    title: kSkillsSubheading2,
    tileChildrenLists: <List<Widget>>[
      kOtherSkillsLanguages,
      kOtherSkillsInfrastructure,
    ],
  ),
];

// Experience
List<Widget> kExperienceChildren = <Widget>[
  CEWorkCard(
    imageUrl: kDefaultMediaUrl + 'suran.jpg',
    position: 'Full Stack Developer',
    company: 'Suran Systems Inc.',
    startDate: 'Mar. 2021',
    endDate: 'Present',
    detailsTitle: 'Responsibilities at Suran Systems',
    details: <String>[
      'Worked remotely, both collaboratively and independently, in a Agile development cycle',
      'Developed both front and back end apps/services with automated CI/CD pipelines',
      'Helped diagnose and resolve issues from a developer, data services, and operations standpoint',
      'Collaborated in planning major development projects',
      'Monitored services and performed disaster recovery',
      'Developed deployment and monitoring solutions for new development',
      'Collaborated on development changes for PCI compliance',
    ],
    websiteUrl: 'https://www.suran.com/',
  ),
  CEWorkCard(
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Target_%282018%29.svg/800px-Target_%282018%29.svg.png',
    position: 'Specialty Sales',
    company: 'Target',
    startDate: 'Sept. 2020',
    endDate: 'Jan. 2021',
    detailsTitle: 'Responsibilities at Target',
    details: <String>[
      'Worked in a mostly independent environment to serve guests and reach area sales goals',
      'Gained further information on a variety of products to help in answering guest questions',
    ],
    websiteUrl: 'https://www.target.com/',
  ),
  CEWorkCard(
    imageUrl: 'https://www.fyxit.net/uploads/4/0/7/4/40746573/png.png',
    position: 'Manager / Apple Technician',
    company: 'Fyxit Tech Repair and Services',
    startDate: 'July 2017',
    endDate: 'May 2020',
    detailsTitle: 'Responsibilities at Fyxit',
    details: <String>[
      'Worked closely in a dynamic environment to solve problems both single handedly and as a team',
      'Diagnosed issues, priced repairs, contacted customers, and performed repairs on thousands of tickets',
      'Focused on providing a great customer service experience',
    ],
    websiteUrl: 'https://www.fyxit.net/',
  ),
];

// Projects
List<Widget> kProjectsChildren = <Widget>[
  CPProjectCard(
    title: 'Personal Website',
    language: 'Flutter (Dart)',
    demoScreenshotLink: kDefaultMediaUrl + 'personal_site_screenshot.png',
    demoLink: 'https://jlabolle.dev',
    repoLink: 'https://github.com/jlaboll/jlaboll-web/tree/main',
    aboutTitle: 'About jlabolle.dev',
    about: <String>[
      'The goal of this project was to demonstrate front-end development experience, while also supplementing a traditional resume.',
      'I chose to start the project in Flutter after learning of Flutter\'s ability to build native multi-platform applications in a single codebase.',
      'I also decided I would host the site on-premises behind a reverse proxy/load balancer as not to conflict with other services on the network.',
      'I learned a lot working on this project, and have enjoyed returning to it every few months to apply new ideas and refactor areas I feel I can improve.',
      'This is my longest running project, starting under a different repository and language in 2021, but seeing the most drastic improvements starting Jan. 2023.',
    ],
  ),
  CPProjectCard(
    title: 'On-Premises Kubernetes Deployment',
    language: 'Kubernetes / Helm / Bash',
    demoScreenshotLink: kDefaultMediaUrl + 'kubernetes_space.png',
    demoLink: 'https://portal.hedgehogcode.dev',
    repoLink: '',
    aboutTitle: 'About On-Premises Kubernetes Cluster',
    about: <String>[
      'The goal of this project was to deploy a production-level on-premises instance of Jetbrains Space.',
      'Documentation suggested production-level deployments had to run on Kubernetes, which became the focus of the project from that point.',
      'I had to build a understanding of Kubernetes from scratch, only being familiar with Docker containers previously.',
      'After initially exploring cluster initialization with a custom ansible playbook, I ended up initializing with Kubespray.',
      'Then I again tried my hand at creating deployments on the cluster with Ansible before learning about Helm.',
      'Once I had settled into a initialization/deployment strategy, I began learning about the different deployments I would need for a Space deployment.',
      'The tech stack on the cluster currently includes: Traefik, Ceph, Redis, PostgreSQL, ElasticSearch, MinIO, Prometheus, Grafana, and Jetbrains Space.',
      'This was the most difficult and rewarding project I have worked on for personal use, and I hope to continue utilizing the cluster and refining the existing deployments to provide a container-based solution for all my on-premises projects.'
    ],
  ),
];

// App
List<Widget> kQuickLinks = <Widget>[
  CCQuickLinkButton(
    url: 'https://github.com/jlaboll',
    iconUrl: 'https://img.icons8.com/fluent/50/000000/github.png',
  ),
  CCQuickLinkButton(
      url: 'https://www.linkedin.com/in/jasen-labolle-7a57221a0',
      iconUrl: 'https://img.icons8.com/fluent/50/000000/linkedin.png'),
];

List<CCPage> kPages = <CCPage>[
  CCPage(
    navButton: CAAppNavButton(
      index: 0,
      text: kHomeNavLabel,
      icon: kHomeNavIcon,
    ),
    content: CHHome(
      homeChildren: kHomeChildren,
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
