import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/data/entity/slidercard_model.dart';
import 'package:flutter_foodshop/view/cubit/slidercard_cubit.dart';
import 'package:flutter_foodshop/view/screens/home.dart';

abstract class HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> resim = [
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
  ];

  late final List<SlidercardModel> cardModel;

  Timer? _timer;
  PageController myCardPageController =
      PageController(initialPage: 3, viewportFraction: 0.9);
  myCardInfiniteSlider() {
    _timer = Timer.periodic(Duration(seconds: 2), (callback) {
      BlocProvider.of<SlidercardCubit>(context)
          .changeSlider(BlocProvider.of<SlidercardCubit>(context).state + 1);
      myCardPageController.animateToPage(
          BlocProvider.of<SlidercardCubit>(context).state,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myCardInfiniteSlider();
    cardModel = SliderCardItems(context).cardItems;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myCardPageController.dispose();
    _timer?.cancel();
  }
}
