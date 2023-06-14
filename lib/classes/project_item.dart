class ProjectItem {
  ProjectItem(
      {required this.title,
      required this.demo_link,
      required this.repo_link,
      required this.about});
  final String title;
  final String demo_link;
  final String repo_link;
  final List<String> about;
}
