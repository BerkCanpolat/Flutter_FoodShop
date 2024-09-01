import 'package:flutter/material.dart';

final class SlidercardModel {
  final String img;
  final String price;
  final String name;

  SlidercardModel({required this.img, required this.price, required this.name});
}

  class SliderCardItems {
    late final List<SlidercardModel> cardItems;

    SliderCardItems(BuildContext context) {
      cardItems = [
        SlidercardModel(img: 'assets/cola.png', price: "3.99", name: 'Coca Cola'),
        SlidercardModel(img: 'assets/burger.png', price: '20.30', name: 'Hamburger'),
        SlidercardModel(img: 'assets/pizza.png', price: '5.95', name: 'Pizza'),
        SlidercardModel(img: 'assets/donut.png', price: '2.99', name: 'Donut'),
        SlidercardModel(img: 'assets/sushi.png', price: '15.99', name: 'Sushi'),
      ];
    }
  }