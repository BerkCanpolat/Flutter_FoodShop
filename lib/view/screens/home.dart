import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/slidercard_model.dart';
import 'package:flutter_foodshop/products/appbar_circle/appbar_circle.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';
import 'package:flutter_foodshop/products/home_state.dart/home_state.dart';
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
      body: Column(
        children: [
          _SliderCardHomeBloc(myCardPageController: myCardPageController, cardModel: cardModel),
          _SliderCardSelector(cardModel: cardModel),
        ],
      ),
    );
  }
}