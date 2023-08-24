
class AdsModel {
  int? id;
  String? name;
  String? image;
  String? image_right;
  String? ad_type;
  String? link;
  String? is_active;

  AdsModel({
    this.id,
    this.name,
    this.image,
    this.image_right,
    this.ad_type,
    this.link,
    this.is_active,
  });

  factory AdsModel.fromJson(Map<String, Object?> json) => AdsModel(
      id: json["id"] as int?,
      name: json["name"] as String?,
      image: json["image"] as String?,
      image_right: json["image_right"] as String?,
      ad_type: json["ad_type"] as String?,
      link: json["link"] as String?,
      is_active: json["is_active"] as String?,
  );

  Map<String, Object?> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "image_right": image_right,
    "ad_type": ad_type,
    "link": link,
    "is_active": is_active,
  };
}

class AdsBaseModel {
  List<AdsModel>? models;

  AdsBaseModel({this.models});

  factory AdsBaseModel.fromJson(List<AdsModel>? json) => AdsBaseModel(
    models: json != null ? json.map((e) => AdsModel.fromJson(e as Map<String, Object?>)).toList() : null
  );
}