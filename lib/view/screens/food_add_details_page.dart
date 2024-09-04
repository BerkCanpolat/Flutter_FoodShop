import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/products/details_page_state/details_state.dart';
import 'package:flutter_foodshop/view/cubit/add_card_cubit.dart';
import 'package:flutter_foodshop/view/cubit/food_badge_cubit.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_button.dart';

class FoodAddDetailsPage extends StatefulWidget {
  const FoodAddDetailsPage({super.key});

  @override
  State<FoodAddDetailsPage> createState() => _FoodAddDetailsPageState();
}

class _FoodAddDetailsPageState extends DetailsState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yemek Sepetim'),
        centerTitle: false,
      ),
      body: BlocBuilder<AddCardCubit, List<FoodAddModel>>(
        builder: (context, state) {
          int totalPrice = calculateTotalPrice(state);
          if (state.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Henüz Sepete Yemek Eklemedin!',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Image.asset('assets/empty_basket.gif'),
              ],
            );
          }
          if (state.isNotEmpty) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        var food = state[index];
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Card(
                                  elevation: 0.0,
                                  child: Image.network(
                                    "http://kasimadalan.pe.hu/yemekler/resimler/${food.yemek_resim_adi}",
                                    height: 90,
                                    width: 90,
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    food.yemek_adi,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fiyat: ${food.yemek_fiyat * food.yemek_siparis_adet} ₺",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Adet: ${food.yemek_siparis_adet}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    context
                                        .read<AddCardCubit>()
                                        .deleteFoodCubit(food.kullanici_adi,
                                            food.sepet_yemek_id);
                                    context.read<FoodBadgeCubit>().resetBadge();
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 15, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Toplam :',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          "${totalPrice} ₺",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Color(0xFFe85d04),
                                  ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DetailsButton(onPressed: () {}))
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
