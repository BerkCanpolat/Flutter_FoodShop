import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme) {
    _loadTheme();
  }

  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 28
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.orange,
        size: 28
      )
    ),
  );

  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black
  );

  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    if(state.brightness == Brightness.dark) {
      emit(_lightTheme);
      await prefs.setBool('isDarkMode', false);
    } else {
      emit(_darkTheme);
      await prefs.setBool('isDarkMode', true);
    }
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    emit(isDarkMode ? _darkTheme : _lightTheme);
  }
}