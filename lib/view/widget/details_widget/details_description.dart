import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.detailsDescription, style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                context.detailsDescText,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}