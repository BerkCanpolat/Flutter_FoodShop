import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/view/cubit/add_card_cubit.dart';
import 'package:flutter_foodshop/view/screens/food_add_details_page.dart';

abstract class DetailsState extends State<FoodAddDetailsPage> {  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AddCardCubit>().foodGetCubit("berk");
  }

    int calculateTotalPrice(List<FoodAddModel> foodList) {
    int total = 0;
    for (var food in foodList) {
      var price = food.yemek_fiyat;
      var quantity = food.yemek_siparis_adet;
      total += price * quantity;
    }
    return total;
  }

}