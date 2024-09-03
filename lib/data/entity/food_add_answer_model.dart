import 'package:flutter_foodshop/data/entity/food_add_model.dart';

class FoodAddAnswerModel {
  final List<FoodAddModel> foodAdd;

  FoodAddAnswerModel({required this.foodAdd});

  factory FoodAddAnswerModel.fromJson(Map<String,dynamic> json) {
    var foodAddArray = json['sepet_yemekler'] as List;

    var addFood = foodAddArray.map((e) => FoodAddModel.fromJson(e)).toList();

    return FoodAddAnswerModel(foodAdd: addFood);
  }
}