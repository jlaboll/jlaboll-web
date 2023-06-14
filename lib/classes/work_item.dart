class WorkItem {
  WorkItem(
      {required this.position,
      required this.company,
      required this.company_logo_url,
      required this.company_url,
      required this.start_date,
      required this.end_date,
      required this.responsibilities});
  final String position;
  final String company;
  final String company_logo_url;
  final String company_url;
  final String start_date;
  final String end_date;
  final List<String> responsibilities;
}
