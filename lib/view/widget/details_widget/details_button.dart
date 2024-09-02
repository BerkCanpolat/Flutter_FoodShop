import 'package:flutter/material.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton.icon(
          onPressed: (){}, 
          label: Text(
            context.detailsButtonText, style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Colors.white
            ),
            ),
          icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20,),
          style: ElevatedButton.styleFrom(
            //backgroundColor: Color(0xFFe85d04),
          ),
          ),
      ),
    );
  }
}