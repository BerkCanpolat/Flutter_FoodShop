
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/view/cubit/food_badge_cubit.dart';
import 'package:flutter_foodshop/view/screens/food_add_details_page.dart';
import 'package:flutter_foodshop/view/widget/app_bar_widget/icon_button.dart';
import 'package:flutter_foodshop/view/widget/app_bar_widget/padding_circle.dart';

class HomeAppBarCircle extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBarCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const AppBarCirclePadding(),
      leadingWidth: MediaQuery.of(context).size.width / 1,
      actions: [
        Stack(
          children: [
            AppBarIconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FoodAddDetailsPage()));
            },icon: Icons.shopping_bag_outlined,),
            BlocBuilder<FoodBadgeCubit, int>(
              builder: (context, state) {
                return state > 0 ?
                  Positioned(
              right: 7,
              top: 7,
              child: CircleAvatar(
                radius: 7.5,
                backgroundColor: Colors.red,
                child: Text(
                  '$state', style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ) : const SizedBox.shrink();
              },
            )
          ],
        ),
        AppBarIconButton(onPressed: (){},icon: Icons.more_vert_outlined,),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}