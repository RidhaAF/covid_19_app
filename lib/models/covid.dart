class Covid {
  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;

  Covid({
    required this.name,
    required this.positif,
    required this.sembuh,
    required this.meninggal,
  });

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
      name: json['name'],
      positif: json['positif'],
      sembuh: json['sembuh'],
      meninggal: json['meninggal'],
    );
  }
}
