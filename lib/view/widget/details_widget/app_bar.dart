import 'package:flutter/material.dart';
import 'package:flutter_foodshop/view/widget/app_bar_widget/icon_button.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Details'),
      actions: [
        AppBarIconButton(onPressed: (){}, icon: Icons.shopping_bag_outlined),
        AppBarIconButton(onPressed: (){}, icon: Icons.more_vert),
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}