import 'categories.dart';

class BaseModel {
  int? count;
  String? next;
  String? previous;
  List<PostsModel>? posts;

  BaseModel({
    this.count,
    this.next,
    this.previous,
    this.posts,
  });

  factory BaseModel.fromJson(Map<String?, Object?> json) => BaseModel(
      count: json["count"] as int?,
      next: json["next"] as String?,
      previous: json["previous"] as String?,
      posts: json["results"] != null ? List<Map<String, Object?>>.from(json["results"] as List).map(PostsModel.fromJson).toList() : null,
  );
}

class PostsModel {
  int? id;
  CategoriesModel? category;
  String? title;
  String? shortDescription;
  String? relatesTo;
  String? description;
  String? slug;
  bool? authorOffered;
  DateTime? publish;
  bool? isPinned;
  int? numberOfViews;
  String? image;
  String? imageExtraLarge;
  String? imageLarge;
  String? imageMedium;
  String? imageSmall;
  String? imageSource;
  String? imageName;
  List<String>? gallery;
  String? shortUrl;
  String? youtubeLink;
  List<String>? tags;
  DateTime? expiredAt;
  String? language;

  PostsModel({
    this.id,
    this.category,
    this.title,
    this.shortDescription,
    this.relatesTo,
    this.description,
    this.slug,
    this.authorOffered,
    this.publish,
    this.isPinned,
    this.numberOfViews,
    this.image,
    this.imageExtraLarge,
    this.imageLarge,
    this.imageMedium,
    this.imageSmall,
    this.imageSource,
    this.imageName,
    this.gallery,
    this.shortUrl,
    this.youtubeLink,
    this.tags,
    this.expiredAt,
    this.language,
  });

  factory PostsModel.fromJson(Map<String, Object?> json) => PostsModel(
        id: json["id"] as int?,
        category: json["category"] != null
            ? CategoriesModel.fromJson(json["category"] as Map<String, Object?>)
            : null,
        title: json["title"] as String?,
        shortDescription: json["short_description"] as String?,
        relatesTo: json["relates_to"] as String?,
        description: json["description"] as String?,
        slug: json["slug"] as String?,
        authorOffered: json["author_offered"] as bool?,
        publish: json["publish"] != null ? DateTime.parse(json["publish"] as String).toIso8601String() as DateTime : null,
        isPinned: json["is_pinned"] as bool?,
        numberOfViews: json["number_of_views"] as int?,
        image: json["image"] as String?,
        imageExtraLarge: json["image_extra_large"] as String?,
        imageLarge: json["image_large"] as String?,
        imageMedium: json["image_medium"] as String?,
        imageSmall: json["image_small"] as String?,
        imageSource: json["image_source"] as String?,
        imageName: json["image_name"] as String?,
        gallery:
            json["gallery"] != null ? json["gallery"] as List<String> : null,
        shortUrl: json["short_url"] as String?,
        youtubeLink: json["youtube_link"] as String?,
        tags: json["tags"] != null ? json["tags"] as List<String> : null,
        expiredAt: json["expired_at"] != null ? DateTime.parse(json["expired_at"] as String).toIso8601String() as DateTime : null,
        language: json["language"] as String?,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "category": category?.toJson(),
        "title": title,
        "short_description": shortDescription,
        "relates_to": relatesTo,
        "description": description,
        "slug": slug,
        "author_offered": authorOffered,
        "publish": publish,
        "is_pinned": isPinned,
        "number_of_views": numberOfViews,
        "image": image,
        "image_extra_large": imageExtraLarge,
        "image_large": imageLarge,
        "image_medium": imageMedium,
        "image_small": imageSmall,
        "image_source": imageSource,
        "image_name": imageName,
        "gallery": gallery,
        "short_url": shortUrl,
        "youtube_link": youtubeLink,
        "tags": tags,
        "expired_at": expiredAt,
        "language": language,
      };
}
