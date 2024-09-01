import 'package:flutter_foodshop/data/entity/food_model.dart';

class FoodModelAnswer {
  final List<FoodModel> foods;

  FoodModelAnswer({required this.foods});

  factory FoodModelAnswer.fromJson(Map<String,dynamic> json) {
    var jsonArray = json['yemekler'] as List;

    var arrayMap = jsonArray.map((e) => FoodModel.fromJson(e)).toList();

    return FoodModelAnswer(foods: arrayMap);
  }

}