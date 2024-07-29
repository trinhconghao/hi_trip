class HotLine {
  final String ht;

  HotLine({
    required this.ht,
  });

  factory HotLine.fromJson(Map<String, dynamic> json) {
    return HotLine(
      ht: json['sdt'] ?? '',
    );
  }
}