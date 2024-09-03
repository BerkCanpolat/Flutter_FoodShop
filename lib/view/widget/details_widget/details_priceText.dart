import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';

class DetailsPriceText extends StatelessWidget {
  const DetailsPriceText({
    super.key,
    required this.priteText,
  });

  final String priteText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
                  text: '${context.detailsPriceTwo} ',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                TextSpan(
                    text: priteText,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xFFe85d04),
                        ))
              ])),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 11,
                color: Colors.yellow[700],
              ),
              Text(
                '4.5',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
