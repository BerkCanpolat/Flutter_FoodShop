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
    cardColor: Colors.grey[50],
    //Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      unselectedIconTheme: IconThemeData(
        color: AppColorTheme.lightIconUnselectedColor,
        size: 26
      ),
      selectedIconTheme: IconThemeData(
        color: AppColorTheme.lightIconSelectedColor,
        size: 26
      ),
    ),
    //App Bar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColorTheme.lightAppBarBG,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorTheme.lightFloatBG,
      foregroundColor: AppColorTheme.lightForeignC,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFe85d04),
      )
    ),
  );

  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    cardColor: Color(0xFFfefae0),
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.red),
      titleMedium: TextStyle(color: Colors.white)
    ),
    scaffoldBackgroundColor: const Color(0xFF151415),
    //Bottom Navigation Bar Theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      unselectedIconTheme: IconThemeData(
        color: AppColorTheme.darkIconUnselectedColor,
        size: 26
      ),
      selectedIconTheme: IconThemeData(
        color: AppColorTheme.darkIconSelectedColor,
        size: 26
      ),
    ),
    //App Bar Theme
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColorTheme.darkAppBarBG,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorTheme.darkFloatBG,
      foregroundColor: AppColorTheme.darkForeignC,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.grey[900],
    ),
        elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        //backgroundColor: Colors.blueGrey[900]
        backgroundColor: Color(0xFF41292C)
      )
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