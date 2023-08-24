import 'base_model.dart';
import 'translate_model.dart';

class BisinesModel {
  PostsModel? postsModel;
  List<PostsModel>? similarPosts;
  List<TranslateModel>? toTranslate;
  PostsModel? nextPost;
  PostsModel? prevPost;

  BisinesModel({
    this.postsModel,
    this.similarPosts,
    this.toTranslate,
    this.nextPost,
    this.prevPost,
  });


  factory BisinesModel.fromJson(Map<String, Object?> json) => BisinesModel(
      postsModel: json["post_detail"] != null ? PostsModel.fromJson(json["post_detail"] as Map<String, Object?>) : null,
      similarPosts: json["similar_posts"] != null ? List<Map<String, Object?>>.from(json["similar_posts"] as List).map(PostsModel.fromJson).toList(): null,
      toTranslate: json["to_translate"] != null ? List<Map<String, Object?>>.from(json["to_translate"] as List).map(TranslateModel.fromJson).toList() : null,
      nextPost: json["next_post"] != null ? PostsModel.fromJson(json["next_post"] as Map<String, Object?>) : null,
      prevPost: json["prev_post"] != null ? PostsModel.fromJson(json["prev_post"] as Map<String, Object?>) : null,
  );


  Map<String, Object?> toJson() => {
    "post_detail": postsModel?.toJson(),
    "similar_posts": similarPosts,
    "to_translate": toTranslate,
    "next_post": nextPost?.toJson(),
    "prev_post": prevPost?.toJson(),
  };


}
