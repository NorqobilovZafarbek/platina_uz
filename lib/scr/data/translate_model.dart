class TranslateModel {
  String? language;
  String? slug;
  DateTime? publish;

  TranslateModel({
    this.language,
    this.slug,
    this.publish,
  });

  factory TranslateModel.fromJson(Map<String, Object?> json) => TranslateModel(
        language: json["language"] as String?,
        slug: json["slug"] as String?,
        publish: json["publish"] != null ? DateTime.parse(json["publish"] as String).toIso8601String() as DateTime : null,
      );

  Map<String, Object?> toJson() => {
        "language": language,
        "slug": slug,
        "publish": publish,
      };
}
