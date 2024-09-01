import 'package:flutter/material.dart';
import 'package:flutter_foodshop/generated/l10n.dart';

extension LocalEx on BuildContext {
  String get appWelcome => S.of(this).appbarWelcome;
  String get sliderPriceOne => S.of(this).sliderCardProductPriceOne;
  String get sliderPriceTwo => S.of(this).sliderCardProductPriceTwo;
  String get sliderPriceThree => S.of(this).sliderCardProductPriceThree;
  String get sliderPriceFour => S.of(this).sliderCardProductPriceFour;
  String get sliderPriceFive => S.of(this).sliderCardProductPriceFive;
  String get sliderButton => S.of(this).sliderCardButtonName;
}