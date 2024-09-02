import 'package:flutter/material.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/view/widget/details_widget/app_bar.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_main_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(),
      body: DetailsMainPage(widget: widget),
    );
  }
}