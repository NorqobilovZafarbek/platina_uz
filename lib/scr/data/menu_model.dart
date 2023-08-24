class MenuModel {
  String? name;
  String? slug;
  String? color;
  int? order;
  String? link;
  String? language;

  MenuModel({
    this.name,
    this.slug,
    this.color,
    this.order,
    this.link,
    this.language,
  });

  factory MenuModel.fromJson(Map<String, Object?> json) => MenuModel(
        name: json["name"] as String?,
        slug: json["slug"] as String?,
        color: json["color"] as String?,
        order: json["order"] as int?,
        link: json["link"] as String?,
        language: json["language"] as String?,
      );

  Map<String, Object?> toJson() => {
        "name": name,
        "slug": slug,
        "color": color,
        "order": order,
        "link": link,
        "language": language,
      };
}


class MenuBaseModel {
  List<MenuModel>? menu;

  MenuBaseModel({this.menu});

  factory MenuBaseModel.fromJson(List<MenuModel>? json)=> MenuBaseModel(
    menu: json != null ? json.map((e) => MenuModel.fromJson(e as Map<String,Object?>)).toList() : null,
  );

}