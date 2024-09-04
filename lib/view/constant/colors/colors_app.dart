import 'package:flutter/material.dart';

final class AppColorTheme extends Color {
  AppColorTheme(super.value);

  //Theme Light Main Color
  static const scaffoldBGWhite = Colors.white;
  static const primaryColorBlack = Colors.black;

  //Theme BottomNavigationBar Light Main Color
  static const lightIconUnselectedColor = Colors.black;
  static const lightIconSelectedColor = Colors.orange;

  //Theme Floatingactionbutton Light
  static const lightFloatBG = Colors.black;
  static const lightForeignC = Colors.white;

  //Theme AppBar Ligh
  static const lightAppBarBG = Colors.white;

  //Theme Light CardColor
  static var lightCardColor = Colors.grey[50];

  //Theme Light ElevatedButton
  static const lightElevatedBG = Color(0xFFe85d04);

  //Theme Light DialogTheme
  static var lightDialogBG = Colors.grey[900];
  static const lightDialogTitle = Color(0xFFe85d04);
  static const lightDialogContent = Colors.white;

  ///////////////////////////////////////////////

  //Theme Dark Main Color
  //151415
  static const darkScaffoldBG = Color(0xFF151415);

  //Theme BottomNavigationBar Dark Main Color
  static const darkIconUnselectedColor = Colors.white;
  static const darkIconSelectedColor = Colors.orange;

  //Theme AppBar Dark
  static const darkAppBarBG = Color(0xFF151415);

  //Theme Floatingactionbutton Dark
  static const darkFloatBG = Colors.white;
  static const darkForeignC = Colors.black;

  //Theme Dark CardColor
  static var darkCardColor = Color(0xFFfefae0);

  //Theme Dark Title
  static const darkTitleLarge = Colors.red;
  static const darkTitleMedium = Colors.white;
  static const darkTitleBodyLarge = Color(0xFF151415);
  static const darkTitleBodySmall = Color(0xFF41292C);

  //Theme Dark CardTheme
  static var darkCardTheme = Colors.grey[900];

  //Theme Dark ElevatedButton
  static const darkElevatedBG = Color(0xFF41292C);

  //Theme Dark DialogTheme
  static const darkDialogBG = Color(0xFF3F272A);
  static const dartkDialogTitle = Color(0xFFe85d04);
  static const darkDialogContent = Colors.white;
  
}