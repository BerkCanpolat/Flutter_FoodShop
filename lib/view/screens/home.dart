import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/appbar_circle/appbar_circle.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  List <String> resim = [
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
  ];

  int myCardCurrentIndex = 3;
  PageController myCardPageController = PageController(initialPage: 3, viewportFraction: 0.7);
  myCardInfiniteSlider() {
    Timer.periodic(Duration(seconds: 2), (callback) {
      myCardCurrentIndex++;
      myCardPageController.animateToPage(myCardCurrentIndex, duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myCardInfiniteSlider();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myCardPageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarCircle(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: myCardPageController,
              onPageChanged: (value) {
                myCardCurrentIndex = value;
                setState(() {
                  
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey
                  ),
                  child: Image.asset(resim[index %resim.length], fit: BoxFit.cover,),
                );
              },
            ),
          ),
          TabPageSelector(
            controller: TabController(length: resim.length, vsync: this, initialIndex: myCardCurrentIndex%resim.length),
          )
        ],
      ),
    );
  }
}