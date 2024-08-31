import 'package:flutter/material.dart';
import 'package:flutter_foodshop/view/constant/image/app_bar_image.dart';

class AppBarCirclePadding extends StatelessWidget {
  const AppBarCirclePadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
         const CircleAvatar(
            backgroundImage: AssetImage('assets/${AppBarImage.appBarCircleAvatar}'),
            maxRadius: 24,
          ),
          const SizedBox(width: 10,),
          const Icon(Icons.waving_hand_sharp, color: Colors.orangeAccent, size: 17,),
          Text.rich(
            TextSpan(
              text: ' Hoşgeldin', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold
              ),
              children: <TextSpan>[
                TextSpan(text: ' Berk!', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey
                ))
              ]
            ),
          ),
        ],
      ),
    );
  }
}