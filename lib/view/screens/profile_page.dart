import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foodshop/products/extension/localize_extension.dart';
import 'package:flutter_foodshop/view/cubit/localizations_cubit.dart';
import 'package:flutter_foodshop/view/cubit/theme_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            const _ProfileCircleAvatar(),
            const _ProfileNameText(),
            const _ProfileMailText(),
            const _ProfileButton(),
            _ProfileListTile(
              title: context.profileOrderHistory,
              subTitle: context.profileOrderHistorySub,
              iconDataOne: Icons.history_toggle_off_outlined,
              iconDataTwo: Icons.arrow_forward_ios_rounded,
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                context.read<LocalizationsCubit>().changeLanguage('en');
              },
              child: _ProfileListTile(
                title: context.changeLanguageEnglish,
                subTitle: context.changeLanguageEnglishSub,
                iconDataOne: Icons.language_outlined,
                iconDataTwo: Icons.arrow_forward_ios_rounded,
              ),
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                context.read<LocalizationsCubit>().changeLanguage('tr');
              },
              child:  _ProfileListTile(
                title: context.changeLanguageTurkish,
                subTitle: context.changeLanguageTuskishSub,
                iconDataOne: Icons.language,
                iconDataTwo: Icons.arrow_forward_ios_rounded,
              ),
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                 context.read<ThemeCubit>().toggleTheme();
              },
              child:  _ProfileListTile(
                title: context.darkLightTheme,
                subTitle: context.darkLightThemeSub,
                iconDataOne: Icons.brightness_2_outlined,
                iconDataTwo: Icons.arrow_forward_ios_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _ListTileHeigt() => const SizedBox(height: 10,);
}

class _ProfileButton extends StatelessWidget {
  const _ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: (){}, 
        child: Text(
          context.profileButton, style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}

class _ProfileMailText extends StatelessWidget {
  const _ProfileMailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'canpolatberk19@gmail.com', style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 13
      ),
      );
  }
}

class _ProfileNameText extends StatelessWidget {
  const _ProfileNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Text(
        'Berk Canpolat', style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),
        ),
    );
  }
}

class _ProfileCircleAvatar extends StatelessWidget {
  const _ProfileCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/stack_avatar.png'),
      radius: 70,
      backgroundColor: Colors.white,
    );
  }
}

class _ProfileListTile extends StatelessWidget {
  const _ProfileListTile({
    super.key, required this.title, required this.subTitle, required this.iconDataOne, required this.iconDataTwo,
  });

  final String title;
  final String subTitle;
  final IconData iconDataOne;
  final IconData iconDataTwo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconDataOne),
      trailing: Icon(iconDataTwo),
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }
}