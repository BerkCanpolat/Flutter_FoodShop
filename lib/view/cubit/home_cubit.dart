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

  Future<void> foodCubitAdd(String yemek_adi, String yemek_resim_adi, int yemek_fiyat, int yemek_siparis_adet, String kullanici_adi) async {
    await foodRepo.foodSave(yemek_adi, yemek_resim_adi, yemek_fiyat, yemek_siparis_adet, kullanici_adi);
  }
}