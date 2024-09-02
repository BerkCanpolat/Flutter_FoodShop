import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';

class FavoriteCubit extends Cubit<List<FoodModel>> {
  FavoriteCubit() : super([]);

  void addToFavorites(FoodModel food) {
    if(!state.contains(food)) {
      emit([...state,food]);
    }
  }

  bool isFavorite(FoodModel food) {
    return state.contains(food);
  }

  void removeFromFavorites(FoodModel food) {
    emit(state.where((item) => item != food).toList());
  }

}