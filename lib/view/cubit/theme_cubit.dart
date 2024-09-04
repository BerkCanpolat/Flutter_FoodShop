import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/constant/colors/colors_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(_lightTheme) {
    _loadTheme();
  }




  //Theme Light Main
  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColorTheme.primaryColorBlack,
    scaffoldBackgroundColor: AppColorTheme.scaffoldBGWhite,
    cardColor: AppColorTheme.lightCardColor,
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
    //FloatingActionButton Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorTheme.lightFloatBG,
      foregroundColor: AppColorTheme.lightForeignC,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    //Card Theme
    cardTheme: const CardTheme(
      color: Colors.white
    ),
    //ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorTheme.lightElevatedBG,
      ),
    ),
    //Dialog Theme
    dialogTheme: DialogTheme(
      backgroundColor: AppColorTheme.lightDialogBG,
      titleTextStyle: const TextStyle(
        color: AppColorTheme.lightDialogTitle,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      contentTextStyle: const TextStyle(
        color: AppColorTheme.lightDialogContent,
        fontWeight: FontWeight.bold
      )
    ),
  );





  //Theme Dark Main
  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    cardColor: AppColorTheme.darkCardColor,
    //Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: AppColorTheme.darkTitleLarge),
      titleMedium: TextStyle(color: AppColorTheme.darkTitleMedium),
      bodyLarge: TextStyle(color: AppColorTheme.darkTitleBodyLarge),
      bodySmall: TextStyle(color: AppColorTheme.darkTitleBodySmall)
    ),
    scaffoldBackgroundColor: AppColorTheme.darkScaffoldBG,
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
    //FloatingActionButton Theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorTheme.darkFloatBG,
      foregroundColor: AppColorTheme.darkForeignC,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
    ),
    //Card Theme
    cardTheme: CardTheme(
      color: AppColorTheme.darkCardTheme,
    ),
        elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorTheme.darkElevatedBG
      )
    ),
    //Dialog Theme
    dialogTheme: const DialogTheme(
      backgroundColor: AppColorTheme.darkDialogBG,
      titleTextStyle: TextStyle(
        color: AppColorTheme.dartkDialogTitle,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      contentTextStyle: TextStyle(
        color: AppColorTheme.darkDialogContent,
        fontWeight: FontWeight.bold
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