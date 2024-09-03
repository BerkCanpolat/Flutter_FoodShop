import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/food_add_model.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/data/entity/slidercard_model.dart';
import 'package:flutter_foodshop/products/appbar_circle/appbar_circle.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';
import 'package:flutter_foodshop/products/home_state.dart/home_state.dart';
import 'package:flutter_foodshop/view/constant/navigate/navigate_manager.dart';
import 'package:flutter_foodshop/view/cubit/favourite_cubit.dart';
import 'package:flutter_foodshop/view/cubit/home_cubit.dart';
import 'package:flutter_foodshop/view/cubit/slidercard_cubit.dart';
import 'package:flutter_foodshop/view/screens/details_page.dart';

part '../widget/home_widget/slidercard_home.dart';
part '../widget/home_widget/slidercard_selector.dart';
part '../widget/home_widget/home_meals_text.dart';
part '../widget/home_widget/home_circular.dart';
part '../widget/home_widget/home_gridview.dart';
part '../widget/home_widget/home_blocbuilder_meals.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends HomeState{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBarCircle(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SliderCardHomeBloc(myCardPageController: myCardPageController, cardModel: cardModel),
            _SliderCardSelector(cardModel: cardModel),
            const _HomeAllMealsTextWidget(),
            const _HomeBlocBuilderAllMeals()
          ],
        ),
      ),
    );
  }
}