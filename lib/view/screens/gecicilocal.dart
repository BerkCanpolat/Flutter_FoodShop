import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/generated/l10n.dart';
import 'package:flutter_foodshop/view/cubit/localizations_cubit.dart';

class Gecicilocal extends StatelessWidget {
  const Gecicilocal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).appbarWelcome),
            Text('1'),
            ElevatedButton(onPressed: (){
              context.read<LocalizationsCubit>().changeLanguage('tr');
            }, child: Text('TÜRKÇE')),
            ElevatedButton(onPressed: (){
              context.read<LocalizationsCubit>().changeLanguage('en');
            }, child: Text('İNGİLİZCE')),
          ],
        ),
      ),
    );
  }
}