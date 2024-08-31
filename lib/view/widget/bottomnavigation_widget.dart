import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/cubit/bottom_navigationbar_cubit.dart';
import 'package:flutter_foodshop/view/screens/home.dart';

part '../bottom_app_bar.dart/bottom_app.dart';

class _MainBottomNav extends StatelessWidget {
  const _MainBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationbarCubit,int>(
      builder: (context, state) {
        return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
    ],
    currentIndex: state,
    onTap: (value) {
      context.read<BottomNavigationbarCubit>().changeTabIndex(value);
    },
    );
      },
    );
  }
}