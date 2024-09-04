import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/view/cubit/favourite_cubit.dart';
import 'package:flutter_foodshop/view/screens/details_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favori Sayfam'),
        centerTitle: false,
      ),
      body: BlocBuilder<FavoriteCubit, List<FoodModel>>(
        builder: (context, favorites) {
          if (favorites.isEmpty) {
            return const _IsEmptyBlock();
          }
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final food = favorites[index];
              return _FavListTile(food: food);
            },
          );
        },
      ),
    );
  }
}

class _IsEmptyBlock extends StatelessWidget {
  const _IsEmptyBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Henüz Favori Yemeğin yok!', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold
          ),
          ),
        Image.asset('assets/fav.gif'),
      ],
    );
  }
}

class _FavListTile extends StatelessWidget {
  const _FavListTile({
    super.key,
    required this.food,
  });

  final FoodModel food;

  @override
  Widget build(BuildContext context) {
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
  }
}
