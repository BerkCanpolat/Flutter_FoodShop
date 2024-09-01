import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/data/entity/food_model_answer.dart';

class RepositoryFood {
  final Dio _dio;
  RepositoryFood() : _dio = Dio(BaseOptions(baseUrl: 'http://kasimadalan.pe.hu/yemekler/'));

  List<FoodModel> parseFood(String answer) {
    return FoodModelAnswer.fromJson(json.decode(answer)).foods;
  }

  Future<List<FoodModel>?> fetchFoods() async {
    try {
      var response = await _dio.get("${_FoodServicePath.tumYemekleriGetir.name}.php");
      return parseFood(response.data.toString());
    }on DioException catch (e) {
      _ShowDebug.showDioError(e);
    }
    return null;
  }

}

class _ShowDebug {
  static void showDioError(DioException error) {
    if(kDebugMode) {
      print(error.message);
    }
  }
}

enum _FoodServicePath {
  tumYemekleriGetir,
}