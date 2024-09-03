import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_foodshop/data/entity/food_add_answer_model.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/data/entity/food_model_answer.dart';

class RepositoryFood {
  final Dio _dio;
  RepositoryFood()
      : _dio = Dio(BaseOptions(baseUrl: 'http://kasimadalan.pe.hu/yemekler/'));

  List<FoodModel> parseFood(String answer) {
    return FoodModelAnswer.fromJson(json.decode(answer)).foods;
  }

  //Basket food answer
  List<FoodAddModel> foodAddParse(String answer) {
    return FoodAddAnswerModel.fromJson(json.decode(answer)).foodAdd;
  }

  Future<List<FoodModel>?> fetchFoods() async {
    try {
      var response =
          await _dio.get("${_FoodServicePath.tumYemekleriGetir.name}.php");
      return parseFood(response.data.toString());
    } on DioException catch (e) {
      _ShowDebug.showDioError(e);
    }
    return null;
  }

  
  //Food Add
  Future<void> foodSave(String yemek_adi, String yemek_resim_adi,
      int yemek_fiyat, int yemek_siparis_adet, String kullanici_adi) async {
    try {
      final url = "http://kasimadalan.pe.hu/yemekler/sepeteYemekEkle.php";
      var veri = {
        "yemek_adi": yemek_adi,
        "yemek_resim_adi": yemek_resim_adi,
        "yemek_fiyat": yemek_fiyat,
        "yemek_siparis_adet": yemek_siparis_adet,
        "kullanici_adi": kullanici_adi,
      };
      var cevap = await _dio.post(url, data: FormData.fromMap(veri));
    } on DioException catch (e) {
      _ShowDebug.showDioError(e);
    }
  }

      //Basket Food Fetch
    Future<List<FoodAddModel>?> foodGetApi(String kullanici_adi) async {
      try {
        final url =
            "http://kasimadalan.pe.hu/yemekler/sepettekiYemekleriGetir.php";
            var data = {"kullanici_adi": kullanici_adi };
        var response = await _dio.post(url,data: FormData.fromMap(data));
        if(response.data != null && response.data.toString().isNotEmpty) {
          return foodAddParse(response.data.toString());
        } else {
        }
        return foodAddParse(response.data.toString());
      } on DioException catch (e) {
        _ShowDebug.showDioError(e);
        return null;
      }
    }
  
}

class _ShowDebug {
  static void showDioError(DioException error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}

enum _FoodServicePath {
  tumYemekleriGetir,
}
