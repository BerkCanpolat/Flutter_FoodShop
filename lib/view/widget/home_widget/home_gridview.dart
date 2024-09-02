part of '../../screens/home.dart';
class _HomeGridViewWidget extends StatelessWidget with NavigateManager{
  const _HomeGridViewWidget({
    super.key, required this.food_model,
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
      mainAxisSpacing: 20
      ), 
    itemBuilder: (context, index) {
      var food = food_model[index];
      return  InkWell(
        onTap: () {
          navigateToWidget(context, DetailsPage(foodModel: food,));
        },
        child: Card(
          elevation: 0.5,
          child: Column(
            children: [
             const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_outline, color: Colors.red,)
                  ],
                )
              ),
              Image.network('http://kasimadalan.pe.hu/yemekler/resimler/${food.yemek_resim_adi}', height: 100,),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${food.yemek_adi}',style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        Text(
                          context.homeFreeShippingText, style:  Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.grey[600]
                          )
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 11, color: Colors.yellow[700],),
                        Text(
                          '4.5', style: Theme.of(context).textTheme.titleSmall,
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
                    '${food.yemek_fiyat} ₺', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Color(0xFFe85d04),
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  IconButton(
                    onPressed: (){}, icon: 
                    Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    },
                  );
  }
}