import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton.icon(
        onPressed: onPressed, 
        label: Text(
          context.detailsButtonText, style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.white
          ),
          ),
        icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20,),
        ),
    );
  }
}