import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/constant/colors/colors_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme) {
    _loadTheme();
  }

  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColorTheme.primaryColorBlack,
    scaffoldBackgroundColor: AppColorTheme.scaffoldBGWhite,
    //Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      unselectedIconTheme: IconThemeData(
        color: AppColorTheme.lightIconUnselectedColor,
        size: 28
      ),
      selectedIconTheme: IconThemeData(
        color: AppColorTheme.lightIconSelectedColor,
        size: 28
      )
    ),
    //App Bar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColorTheme.lightAppBarBG,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      
    ),
  );

  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xFF151415),
    //Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      unselectedIconTheme: IconThemeData(
        color: AppColorTheme.darkIconUnselectedColor,
        size: 28
      ),
      selectedIconTheme: IconThemeData(
        color: AppColorTheme.darkIconSelectedColor,
        size: 28
      ),
    ),
    //App Bar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColorTheme.darkAppBarBG,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
    ),
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