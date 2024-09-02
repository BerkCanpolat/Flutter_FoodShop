import 'package:flutter/material.dart';
import 'package:flutter_foodshop/view/screens/details_page.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_button.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_description.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_priceText.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_stack.dart';

class DetailsMainPage extends StatelessWidget {
  const DetailsMainPage({
    super.key,
    required this.widget,
  });

  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        children: [
          Text(
            widget.foodModel.yemek_adi ?? '', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold
            ),
            ),
          Image.network('http://kasimadalan.pe.hu/yemekler/resimler/${widget.foodModel.yemek_resim_adi}', height: MediaQuery.of(context).size.height * 0.4,),
          const DetailsDescription(),
          const DetailsPriceText(),
          const DetailsStack(),
          const DetailsButton()
        ],
      ),
    );
  }
}