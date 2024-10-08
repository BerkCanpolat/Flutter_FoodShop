// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome`
  String get appbarWelcome {
    return Intl.message(
      'Welcome',
      name: 'appbarWelcome',
      desc: '',
      args: [],
    );
  }

  /// `$4.99`
  String get sliderCardProductPriceOne {
    return Intl.message(
      '\$4.99',
      name: 'sliderCardProductPriceOne',
      desc: '',
      args: [],
    );
  }

  /// `$12.99`
  String get sliderCardProductPriceTwo {
    return Intl.message(
      '\$12.99',
      name: 'sliderCardProductPriceTwo',
      desc: '',
      args: [],
    );
  }

  /// `$15.99`
  String get sliderCardProductPriceThree {
    return Intl.message(
      '\$15.99',
      name: 'sliderCardProductPriceThree',
      desc: '',
      args: [],
    );
  }

  /// `$3.99`
  String get sliderCardProductPriceFour {
    return Intl.message(
      '\$3.99',
      name: 'sliderCardProductPriceFour',
      desc: '',
      args: [],
    );
  }

  /// `$6.99`
  String get sliderCardProductPriceFive {
    return Intl.message(
      '\$6.99',
      name: 'sliderCardProductPriceFive',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get sliderCardButtonName {
    return Intl.message(
      'Buy Now',
      name: 'sliderCardButtonName',
      desc: '',
      args: [],
    );
  }

  /// `All Meals`
  String get allFoodsCategoryText {
    return Intl.message(
      'All Meals',
      name: 'allFoodsCategoryText',
      desc: '',
      args: [],
    );
  }

  /// `Free Shipping`
  String get homeFoodsFreeShipping {
    return Intl.message(
      'Free Shipping',
      name: 'homeFoodsFreeShipping',
      desc: '',
      args: [],
    );
  }

  /// `Descripption`
  String get descriptionDetails {
    return Intl.message(
      'Descripption',
      name: 'descriptionDetails',
      desc: '',
      args: [],
    );
  }

  /// `Our food is extremely delicious. Delivery is free of charge! We strongly recommend you to taste this unique dish. The products used are extremely clean and hygienic. Order plenty for plenty of food!`
  String get descriptionDetailsSubTitle {
    return Intl.message(
      'Our food is extremely delicious. Delivery is free of charge! We strongly recommend you to taste this unique dish. The products used are extremely clean and hygienic. Order plenty for plenty of food!',
      name: 'descriptionDetailsSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get detailsPriceText {
    return Intl.message(
      'Price',
      name: 'detailsPriceText',
      desc: '',
      args: [],
    );
  }

  /// `8.45`
  String get detailsPrice {
    return Intl.message(
      '8.45',
      name: 'detailsPrice',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get detailsReviews {
    return Intl.message(
      'Reviews',
      name: 'detailsReviews',
      desc: '',
      args: [],
    );
  }

  /// `Get It now`
  String get detailsButton {
    return Intl.message(
      'Get It now',
      name: 'detailsButton',
      desc: '',
      args: [],
    );
  }

  /// `You haven't added food to your baset yet`
  String get basketEmpyImage {
    return Intl.message(
      'You haven\'t added food to your baset yet',
      name: 'basketEmpyImage',
      desc: '',
      args: [],
    );
  }

  /// `You don't have a favourite dish yet`
  String get favoriteEmptyImage {
    return Intl.message(
      'You don\'t have a favourite dish yet',
      name: 'favoriteEmptyImage',
      desc: '',
      args: [],
    );
  }

  /// `Food Basket`
  String get baskettAppbar {
    return Intl.message(
      'Food Basket',
      name: 'baskettAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Favourite Page`
  String get favoriteAppBar {
    return Intl.message(
      'Favourite Page',
      name: 'favoriteAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Added To Basket`
  String get foodAddedDialog {
    return Intl.message(
      'Added To Basket',
      name: 'foodAddedDialog',
      desc: '',
      args: [],
    );
  }

  /// `Quantity: `
  String get basketAddFoodQuantitiy {
    return Intl.message(
      'Quantity: ',
      name: 'basketAddFoodQuantitiy',
      desc: '',
      args: [],
    );
  }

  /// `Price: `
  String get basketAddFoodPrice {
    return Intl.message(
      'Price: ',
      name: 'basketAddFoodPrice',
      desc: '',
      args: [],
    );
  }

  /// `Total: `
  String get basketAddFoodTotal {
    return Intl.message(
      'Total: ',
      name: 'basketAddFoodTotal',
      desc: '',
      args: [],
    );
  }

  /// `Order History`
  String get profileOrderHistory {
    return Intl.message(
      'Order History',
      name: 'profileOrderHistory',
      desc: '',
      args: [],
    );
  }

  /// `Orders Information`
  String get profileOrderHistorySub {
    return Intl.message(
      'Orders Information',
      name: 'profileOrderHistorySub',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get changeLanguageEnglish {
    return Intl.message(
      'English',
      name: 'changeLanguageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Switch To English`
  String get changeLanguageEnglishSub {
    return Intl.message(
      'Switch To English',
      name: 'changeLanguageEnglishSub',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get changeLanguageTurkish {
    return Intl.message(
      'Turkish',
      name: 'changeLanguageTurkish',
      desc: '',
      args: [],
    );
  }

  /// `Switch To Turkish`
  String get changeLanguageTuskishSub {
    return Intl.message(
      'Switch To Turkish',
      name: 'changeLanguageTuskishSub',
      desc: '',
      args: [],
    );
  }

  /// `Dark/Light Theme`
  String get darkLightTheme {
    return Intl.message(
      'Dark/Light Theme',
      name: 'darkLightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Change Now`
  String get darkLightThemeSub {
    return Intl.message(
      'Change Now',
      name: 'darkLightThemeSub',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get profileButton {
    return Intl.message(
      'Edit Profile',
      name: 'profileButton',
      desc: '',
      args: [],
    );
  }

  /// `Details Page`
  String get detailsPageAppBar {
    return Intl.message(
      'Details Page',
      name: 'detailsPageAppBar',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
