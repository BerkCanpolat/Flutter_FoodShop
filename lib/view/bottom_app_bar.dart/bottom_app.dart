import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/cubit/bottom_navigationbar_cubit.dart';
import 'package:flutter_foodshop/view/screens/home.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int myCurrentIndex = 0;

  var changePage = [Home(), Center(child: Container(child: Text('İKİNCİ SAYFA'))), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationbarCubit,int>(
        builder: (context, state) {
          return changePage[state];
        },
        ),
      bottomNavigationBar: BlocBuilder<BottomNavigationbarCubit,int>(
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
      )
    );
  }
}