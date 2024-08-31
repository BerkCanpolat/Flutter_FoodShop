import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationbarCubit extends Cubit<int> {
  BottomNavigationbarCubit() : super(0);

  void changeTabIndex(int index) {
    emit(index);
  }
}