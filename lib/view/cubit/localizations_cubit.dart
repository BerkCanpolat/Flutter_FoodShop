import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationsCubit extends Cubit<Locale> {
  LocalizationsCubit() : super(const Locale('en'));

  void changeLanguage(String languageCode) {
    emit(Locale(languageCode));
  }
}