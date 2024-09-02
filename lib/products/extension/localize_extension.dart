import 'package:flutter/material.dart';
import 'package:flutter_foodshop/generated/l10n.dart';

extension LocalEx on BuildContext {
  //Appbar
  String get appWelcome => S.of(this).appbarWelcome;

  //Slider Card
  String get sliderPriceOne => S.of(this).sliderCardProductPriceOne;
  String get sliderPriceTwo => S.of(this).sliderCardProductPriceTwo;
  String get sliderPriceThree => S.of(this).sliderCardProductPriceThree;
  String get sliderPriceFour => S.of(this).sliderCardProductPriceFour;
  String get sliderPriceFive => S.of(this).sliderCardProductPriceFive;
  String get sliderButton => S.of(this).sliderCardButtonName;

  //Home Card
  String get homeAllCategoryText => S.of(this).allFoodsCategoryText;
  String get homeFreeShippingText => S.of(this).homeFoodsFreeShipping;

  //Details Page
  String get detailsDescription => S.of(this).descriptionDetails;
  String get detailsDescText => S.of(this).descriptionDetailsSubTitle;
  String get detailsPriceOne => S.of(this).detailsPrice;
  String get detailsPriceTwo => S.of(this).detailsPriceText;
  String get detailsRew => S.of(this).detailsReviews;
  String get detailsButtonText => S.of(this).detailsButton;
}