import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/data/entity/slidercard_model.dart';
import 'package:flutter_foodshop/products/appbar_circle/appbar_circle.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';
import 'package:flutter_foodshop/products/home_state.dart/home_state.dart';
import 'package:flutter_foodshop/view/cubit/home_cubit.dart';
import 'package:flutter_foodshop/view/cubit/slidercard_cubit.dart';

part '../widget/home_widget/slidercard_home.dart';
part '../widget/home_widget/slidercard_selector.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends HomeState{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarCircle(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SliderCardHomeBloc(myCardPageController: myCardPageController, cardModel: cardModel),
            _SliderCardSelector(cardModel: cardModel),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 35, bottom: 25),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Color(0xFFe85d04),
                  borderRadius: BorderRadius.circular(13)
                ),
                child: Center(
                  child: Text(
                    'Tüm Yemekler', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
              ),
            ),
            BlocBuilder<HomeCubit, List<FoodModel>>(
              builder: (context, state) {
                if(state.isEmpty) {
                  return Center(child: CircularProgressIndicator(color: Colors.orange,),);
                }
                if(state.isNotEmpty) {
                return GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20
                  ), 
                itemBuilder: (context, index) {
                  var food = state[index];
                  return  Card(
                    //color: Colors.white,
                    elevation: 0.5,
                    child: Column(
                      children: [
                       const Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                                    'Ücretsiz Gönderim', style:  Theme.of(context).textTheme.labelSmall?.copyWith(
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
                  );
                },
              );
                } else {
                  return const CircularProgressIndicator();
                }
              } 
            )
          ],
        ),
      ),
    );
  }
}