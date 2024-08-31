import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/appbar_circle/appbar_circle.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarCircle()
    );
  }
}