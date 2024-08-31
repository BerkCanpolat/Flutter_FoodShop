
import 'package:flutter/material.dart';
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
        AppBarIconButton(onPressed: (){},icon: Icons.shopping_bag_outlined,),
        AppBarIconButton(onPressed: (){},icon: Icons.more_vert_outlined,),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}