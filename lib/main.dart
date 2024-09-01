import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/constant/theme/theme.dart';
import 'package:flutter_foodshop/view/cubit/bottom_navigationbar_cubit.dart';
import 'package:flutter_foodshop/view/cubit/home_cubit.dart';
import 'package:flutter_foodshop/view/cubit/localizations_cubit.dart';
import 'package:flutter_foodshop/view/cubit/slidercard_cubit.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => BottomNavigationbarCubit()),
        BlocProvider(create: (context) => SlidercardCubit(3)),
        BlocProvider(create: (context) => LocalizationsCubit()),
        BlocProvider(create: (context) => HomeCubit())
    ],
    child: const ThemeSwitcher()
    );
  }
}