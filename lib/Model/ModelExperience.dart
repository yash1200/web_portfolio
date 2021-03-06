class ModelExperience {
  final String time;
  final String title;
  final String subtitle;
  final String description;
  final String? url;

  ModelExperience({
    required this.time,
    required this.title,
    required this.subtitle,
    required this.description,
    this.url,
  });
}
