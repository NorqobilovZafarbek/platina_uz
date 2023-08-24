class CategoriesModel {
  int? id;
  String? name;
  String? slug;
  String? color;

  CategoriesModel({
    this.id,
    this.name,
    this.slug,
    this.color,
  });

  factory CategoriesModel.fromJson(Map<String, Object?> json) => CategoriesModel(
        id: json["id"] as int?,
        name: json["name"] as String?,
        slug: json["slug"] as String?,
        color: json["color"] as String?,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "color": color,
      };
}
