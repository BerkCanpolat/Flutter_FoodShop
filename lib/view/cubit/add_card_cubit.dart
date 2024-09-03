import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/data/repository/repository_food.dart';

class AddCardCubit extends Cubit<List<FoodAddModel>> {
  AddCardCubit() : super(<FoodAddModel>[]);

  var repoFood = RepositoryFood();

  Future<void> foodGetCubit(String kullanici_adi) async {
    var list = await repoFood.foodGetApi(kullanici_adi);

    var groupedFood = <String, FoodAddModel>{};

    for (var food in list ?? []) {
      if (groupedFood.containsKey(food.yemek_adi)) {
        groupedFood[food.yemek_adi]!.yemek_siparis_adet += food.yemek_siparis_adet as int;
      } else {
        groupedFood[food.yemek_adi] = food;
      }
    }

    emit(groupedFood.values.toList());
  }
}