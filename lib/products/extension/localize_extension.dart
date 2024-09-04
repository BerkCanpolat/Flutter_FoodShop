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
  String get detailsPageAppBar => S.of(this).detailsPageAppBar;

  //Basket Page
  String get basketEmptyImage => S.of(this).basketEmpyImage;
  String get basketAppBar => S.of(this).baskettAppbar;
  String get basketAddFoodQuantitiy => S.of(this).basketAddFoodQuantitiy;
  String get basketAddFoodPrice => S.of(this).basketAddFoodPrice;
  String get basketAddFoodTotal => S.of(this).basketAddFoodTotal;


  //Favorite Page
  String get favoriteAppBar => S.of(this).favoriteAppBar;
  String get favoriteEmptyImage => S.of(this).favoriteEmptyImage;

  //Dialog
  String get dialogText => S.of(this).foodAddedDialog;

  //Profile
  String get profileOrderHistory => S.of(this).profileOrderHistory;
  String get profileOrderHistorySub => S.of(this).profileOrderHistorySub;
  String get changeLanguageEnglish => S.of(this).changeLanguageEnglish;
  String get changeLanguageEnglishSub => S.of(this).changeLanguageEnglishSub;
  String get changeLanguageTurkish => S.of(this).changeLanguageTurkish;
  String get changeLanguageTuskishSub => S.of(this).changeLanguageTuskishSub;
  String get darkLightTheme => S.of(this).darkLightTheme;
  String get darkLightThemeSub => S.of(this).darkLightThemeSub;
  String get profileButton => S.of(this).profileButton;



}