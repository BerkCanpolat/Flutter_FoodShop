import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/data/repository/repository_food.dart';

class HomeCubit extends Cubit<List<FoodModel>> {
  HomeCubit() : super(const <FoodModel>[]);

  var foodRepo = RepositoryFood();

  Future<void> getFoods() async {
    var list = await foodRepo.fetchFoods();
    emit(list ?? <FoodModel>[]);
  }
}