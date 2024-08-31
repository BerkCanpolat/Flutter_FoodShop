import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';

class Gecici extends StatelessWidget {
  const Gecici({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                actions: [
          IconButton(
            onPressed: () => context.read<ThemeCubit>().toggleTheme(), 
            icon: const Icon(Icons.brightness_2_outlined),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
    );
  }
}