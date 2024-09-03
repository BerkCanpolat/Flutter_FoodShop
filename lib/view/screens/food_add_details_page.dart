import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/view/cubit/add_card_cubit.dart';

class FoodAddDetailsPage extends StatefulWidget {
  const FoodAddDetailsPage({super.key});

  @override
  State<FoodAddDetailsPage> createState() => _FoodAddDetailsPageState();
}

class _FoodAddDetailsPageState extends State<FoodAddDetailsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AddCardCubit>().foodGetCubit("berk");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<AddCardCubit, List<FoodAddModel>>(
              builder: (context, state) {
                if(state.isEmpty) {
                  return Center(child: CircularProgressIndicator(),);
                }
                return ListView.builder(
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      var food = state[index];
                      var totalPrice = food.yemek_siparis_adet * (food.yemek_fiyat ?? 0);
                      return Card(
                        child: Column(
                          children: [
                            Image.network("http://kasimadalan.pe.hu/yemekler/resimler/${food.yemek_resim_adi}", height: 100, width: 100,),
                            Text(food.yemek_adi),
                            Text("${food.yemek_siparis_adet} Adet"),
                            Text("Toplam: $totalPrice")
                          ],
                        ),
                      );
                    },
                  );
              },
            ),
          )
        ],
      )
    );
  }
}