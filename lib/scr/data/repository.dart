import 'dart:convert';

import 'package:platina_api/scr/common/constants/api_constants.dart';

import '../common/service/api_service.dart';
import 'categories.dart';

abstract interface class PlatinaRepository {
  const PlatinaRepository();

  Future<List<CategoriesModel>> getAllCategories();
}

class PlatinaRepositoryImpl implements PlatinaRepository {
  final APIService apiService;

  const PlatinaRepositoryImpl(this.apiService);

  @override
  Future<List<CategoriesModel>> getAllCategories() async {
    String response = await apiService.request(ApiConst.categories,
      headers: {
        "X-PLATINA-API-KEY": "QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ"
      },
    );
   List<CategoriesModel> categories = List<Map<String, Object?>>.from(jsonDecode(response) as List).map((e) => CategoriesModel.fromJson(e)).toList();
   return categories;
  }
}
