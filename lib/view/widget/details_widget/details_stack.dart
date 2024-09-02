import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';

class DetailsStack extends StatelessWidget {
  const DetailsStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              context.detailsRew, style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
              )
            ),
        ]
      ),
    );
  }
}