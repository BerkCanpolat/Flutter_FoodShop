import 'package:flutter_bloc/flutter_bloc.dart';

class SlidercardCubit extends Cubit<int> {
  SlidercardCubit(int initialPage) : super(initialPage);

  void changeSlider(int newSlider) {
    emit(newSlider);
  }
}