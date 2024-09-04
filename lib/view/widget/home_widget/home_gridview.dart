part of '../../screens/home.dart';

class _HomeGridViewWidget extends StatelessWidget with NavigateManager {
  const _HomeGridViewWidget({
    super.key,
    required this.food_model,
  });

  final List<FoodModel> food_model;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: food_model.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        var food = food_model[index];
        return InkWell(
          onTap: () {
            navigateToWidget(
                context,
                DetailsPage(
                  foodModel: food,
                ));
          },
          child: Card(
            elevation: 0.5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlocBuilder<FavoriteCubit, List<FoodModel>>(
                        builder: (context, state) {
                      final isFavorite =
                          context.read<FavoriteCubit>().isFavorite(food);
                      return IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline,
                          color: isFavorite ? Colors.red : Colors.grey,
                        ),
                        onPressed: () {
                          final cubit = context.read<FavoriteCubit>();
                          final isFavorite = cubit.isFavorite(food);
                          if (isFavorite) {
                            cubit.removeFromFavorites(food);
                          } else {
                            cubit.addToFavorites(food);
                          }
                        },
                        padding: EdgeInsets.zero,
                      );
                    })
                  ],
                ),
                Image.network(
                  'http://kasimadalan.pe.hu/yemekler/resimler/${food.yemek_resim_adi}',
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${food.yemek_adi}',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(context.homeFreeShippingText,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: Colors.grey[600])),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 11,
                            color: Colors.yellow[700],
                          ),
                          Text(
                            '4.5',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${food.yemek_fiyat} ₺',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: const Color(0xFFe85d04),
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<HomeCubit>().foodCubitAdd(
                            food.yemek_adi ?? '',
                            food.yemek_resim_adi ?? '',
                            int.parse(food.yemek_fiyat!),
                            1,
                            "berk");
                            context.read<FoodBadgeCubit>().addBadgeItems();
                        _AddFoodAlert(context, food);
                      },
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _AddFoodAlert(BuildContext context, FoodModel food) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('${food.yemek_adi}'), const Divider()],
          ),
          content: Text(context.dialogText),
        );
      },
    );
  }
}
