import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/cubit/details_cubit.dart';
import 'package:flutter_foodshop/view/screens/details_page.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_button.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_description.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_priceText.dart';
import 'package:flutter_foodshop/view/widget/details_widget/details_stack.dart';
import 'package:flutter_foodshop/view/widget/details_widget/quantitiy_iconButton.dart';

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
      child: BlocBuilder<DetailsCubit, int>(
        builder: (context, quantity) {
          int unitPrice = int.parse(widget.foodModel.yemek_fiyat ?? '0');
          int totalPrice = context.read<DetailsCubit>().calculateTotalPrice(unitPrice);
          return Column(
          children: [
            Text(
              widget.foodModel.yemek_adi ?? '', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold
              ),
              ),
            Image.network('http://kasimadalan.pe.hu/yemekler/resimler/${widget.foodModel.yemek_resim_adi}', height: MediaQuery.of(context).size.height * 0.4,),
            const DetailsDescription(),
            DetailsPriceText(priteText: "$totalPrice",),
            const DetailsStack(),
                 Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(
                  children: [
                    DetailsButton(onPressed: (){
                      context.read<DetailsCubit>().detailsAddFood(
                        widget.foodModel.yemek_adi ?? '', 
                        widget.foodModel.yemek_resim_adi ?? '', 
                        unitPrice, 
                        quantity, 
                        "berk"
                      );
                    },),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: QuantitiyIconbutton(iconColor: Colors.white,iconData: Icons.add, onPressed: (){
                        context.read<DetailsCubit>().incrementQuantity(unitPrice);
                      })),
                      const SizedBox(width: 15,),
                    Text(
                      "$quantity", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    const SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: QuantitiyIconbutton(iconColor: Colors.white,iconData: Icons.remove, onPressed: (){
                        context.read<DetailsCubit>().decrementQuantity(unitPrice);
                      }))
                  ],
                ),
              ),
          ],
        );
        }, 
      ),
    );
  }
}