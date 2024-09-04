import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/generated/l10n.dart';
import 'package:flutter_foodshop/view/cubit/localizations_cubit.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';
import 'package:flutter_foodshop/view/widget/bottomnavigation_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return BlocBuilder<LocalizationsCubit, Locale>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              child: MaterialApp(
                key: ValueKey<ThemeData>(theme),
              theme: theme,
              home: BottomApp(),
              localizationsDelegates:const [
                S.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: state,
              debugShowCheckedModeBanner: false,
                ),
            );
          } 
            
        );
      },
    );
  }
}