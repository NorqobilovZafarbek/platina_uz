class PagesModel {
  String? nameUz;
  String? descriptionUz;
  String? nameOz;
  String? descriptionOz;
  String? nameRu;
  String? descriptionRu;
  String? nameEn;
  String? descriptionEn;
  String? slug;

  PagesModel({
    this.nameUz,
    this.descriptionUz,
    this.nameOz,
    this.descriptionOz,
    this.nameRu,
    this.descriptionRu,
    this.nameEn,
    this.descriptionEn,
    this.slug,
  });

  factory PagesModel.fromJson(Map<String, Object?> json) => PagesModel(
        nameUz: json["name_uz"] as String?,
        descriptionUz: json["description_uz"] as String?,
        nameOz: json["name_oz"] as String?,
        descriptionOz: json["description_oz"] as String?,
        nameRu: json["name_ru"] as String?,
        descriptionRu: json["description_ru"] as String?,
        nameEn: json["name_en"] as String?,
        descriptionEn: json["description_en"] as String?,
        slug: json["slug"] as String?,
      );

  Map<String, Object?> toJson() => {
        "name_uz": nameUz,
        "description_uz": descriptionUz,
        "name_oz": nameOz,
        "description_oz": descriptionOz,
        "name_ru": nameRu,
        "description_ru": descriptionRu,
        "name_en": nameEn,
        "description_en": descriptionEn,
        "slug": slug,
      };
}


class PagesModelBaseModel {
  List<PagesModel>? pages;

  PagesModelBaseModel({this.pages});

  factory PagesModelBaseModel.fromJson(List<PagesModel>? json) => PagesModelBaseModel(
    pages: json != null ? json.map((e) => PagesModel.fromJson(e as Map<String,Object?>)).toList() : null,
  );
}
