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
   if (answer.isEmpty || answer.trim() == "") {
      return [];
    }

    return FoodAddAnswerModel.fromJson(json.decode(answer)).foodAdd;
  }

  //Home Page Foods
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
      final url = "${_FoodServicePath.sepeteYemekEkle.name}.php";
      var veri = {
        "yemek_adi": yemek_adi,
        "yemek_resim_adi": yemek_resim_adi,
        "yemek_fiyat": yemek_fiyat,
        "yemek_siparis_adet": yemek_siparis_adet,
        "kullanici_adi": kullanici_adi,
      };
      await _dio.post(url, data: FormData.fromMap(veri));
    } on DioException catch (e) {
      _ShowDebug.showDioError(e);
    }
  }

      //Basket Food Fetch
    Future<List<FoodAddModel>?> foodGetApi(String kullanici_adi) async {
      try {
        final url =
            "${_FoodServicePath.sepettekiYemekleriGetir.name}.php";
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

    //Delete Food
    Future<void> deleteFoodApi(String kullanici_adi, int sepet_yemek_id) async{
      try {
        var url = "${_FoodServicePath.sepettenYemekSil.name}.php";
      var veri = {"kullanici_adi":kullanici_adi,"sepet_yemek_id":sepet_yemek_id};
        await _dio.post(url, data: FormData.fromMap(veri));
      }on DioException catch (e) {
        _ShowDebug.showDioError(e);
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
  sepeteYemekEkle,
  sepettekiYemekleriGetir,
  sepettenYemekSil,
}
