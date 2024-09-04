import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/repository/repository_food.dart';

class DetailsCubit extends Cubit<int> {
  DetailsCubit() : super(0);

  var foodRepo = RepositoryFood();

  Future<void> detailsAddFood(String yemek_adi,String yemek_resim_adi,int yemek_fiyat, int yemek_siparis_adet, String kullanici_adi) async {
    await foodRepo.foodSave(yemek_adi, yemek_resim_adi, yemek_fiyat, yemek_siparis_adet, kullanici_adi);
  }

  int quantity = 0;
  int totalPrice = 0;

  void incrementQuantity(int unitPrice) {
    quantity++;
    calculateTotalPrice(unitPrice);
    emit(quantity);
  }

  void decrementQuantity(int unitPrice) {
    if (quantity > 0) {
      quantity--;
      calculateTotalPrice(unitPrice);
      emit(quantity);
    }
  }

  int calculateTotalPrice(int unitPrice) {
    totalPrice = quantity * unitPrice;
    return totalPrice;
  }

  void resetQuantity() {
    quantity = 0;
    emit(quantity);
  }


}