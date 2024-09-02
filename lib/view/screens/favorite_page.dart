import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/view/cubit/favourite_cubit.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';
import 'package:flutter_foodshop/view/screens/details_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            icon: const Icon(Icons.brightness_2_outlined),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
      body: BlocBuilder<FavoriteCubit, List<FoodModel>>(
        builder: (context, favorites) {
          if (favorites.isEmpty) {
            return const Center(child: Text('Henüz favori ürün yok.'));
          }
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final food = favorites[index];
              return ListTile(
                leading: Image.network(
                    'http://kasimadalan.pe.hu/yemekler/resimler/${food.yemek_resim_adi}'),
                title: Text(food.yemek_adi ?? ''),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle_outline,
                      color: Colors.red),
                  onPressed: () {
                    context.read<FavoriteCubit>().removeFromFavorites(food);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(foodModel: food),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
