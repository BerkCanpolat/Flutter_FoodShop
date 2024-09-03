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
            left: index * 29.0,
            bottom: 54,
            child: Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3
                )
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/stack_avatar.png'),
                backgroundColor: Colors.orange[100],
                
              ),
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