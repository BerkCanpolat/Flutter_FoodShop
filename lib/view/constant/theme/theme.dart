import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/bottom_app_bar.dart/bottom_app.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp(
          theme: theme,
          home: BottomApp()
        );
      },
    );
  }
}