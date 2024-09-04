import 'package:flutter_bloc/flutter_bloc.dart';

class FoodBadgeCubit extends Cubit<int> {
  FoodBadgeCubit() : super(0);

  void addBadgeItems() => emit(state + 1);

  void removeBadgeItems() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  void resetBadge() {
    emit(0);
  }

}