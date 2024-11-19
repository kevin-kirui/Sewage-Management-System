class SewageData {
  final String siteName;
  final int frequency;
  final String condition;

  SewageData(
      {required this.siteName,
      required this.frequency,
      required this.condition});

  Map<String, dynamic> toJson() => {
        'siteName': siteName,
        'frequency': frequency,
        'condition': condition,
      };
}
