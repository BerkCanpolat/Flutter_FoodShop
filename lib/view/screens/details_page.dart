import 'package:flutter/material.dart';
import 'package:flutter_foodshop/data/entity/food_model.dart';
import 'package:flutter_foodshop/view/widget/app_bar_widget/icon_button.dart';
import 'package:flutter_foodshop/view/widget/details_widget/app_bar.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
    List<String> resim = [
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
    'assets/brk.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Text(
              widget.foodModel.yemek_adi ?? 'BOŞ', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold
              ),
              ),
            Image.network('http://kasimadalan.pe.hu/yemekler/resimler/${widget.foodModel.yemek_resim_adi}', height: MediaQuery.of(context).size.height * 0.4,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const SizedBox(height: 10,),
                    Text(
                      'Our food is extremely delicious. Delivery is free of \n charge! We strongly recommend you to taste this \nunique dish. The products used are extremely \nclean and hygienic. Order plenty for plenty of food!',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                text: 'Price: ', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  
                  fontWeight: FontWeight.bold
                ),
                children: <TextSpan>[
                  TextSpan(text: '8.45 ₺' ,style:  Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Color(0xFFe85d04),
                  ))
                ]
              )
              ),
                                  Row(
                        children: [
                          Icon(Icons.star, size: 11, color: Colors.yellow[700],),
                          Text(
                            '4.5', style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ...List.generate(5, (index) {
                  return Positioned(
                    left: index * 29.0,  // index ile kaydırmayı sağlıyoruz
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/brk.jpeg'),
                    ),
                  );
                }
                ),
                Positioned(
                  left: 5 * 29,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent[50],
                    child: Text('5K'),
                  ),
                  ),
                  Positioned(
                    left: 6 * 33,
                    top: 10,
                    child: Text(
                      'Reviews', style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton.icon(
                  onPressed: (){}, 
                  label: Text(
                    'Get It Now', style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white
                    ),
                    ),
                  icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20,),
                  style: ElevatedButton.styleFrom(
                    //backgroundColor: Color(0xFFe85d04),
                  ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}