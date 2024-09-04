import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/constant/theme/theme.dart';
import 'package:flutter_foodshop/view/cubit/add_card_cubit.dart';
import 'package:flutter_foodshop/view/cubit/bottom_navigationbar_cubit.dart';
import 'package:flutter_foodshop/view/cubit/details_cubit.dart';
import 'package:flutter_foodshop/view/cubit/favourite_cubit.dart';
import 'package:flutter_foodshop/view/cubit/food_badge_cubit.dart';
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
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider(create: (context) => AddCardCubit()),
        BlocProvider(create: (context) => DetailsCubit()),
        BlocProvider(create: (context) => FoodBadgeCubit())
    ],
    child: const ThemeSwitcher()
    );
  }
}