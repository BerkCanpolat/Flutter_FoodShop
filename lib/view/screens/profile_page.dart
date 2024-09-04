import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            const _ProfileListTile(
              title: 'Order History',
              subTitle: 'Orders Information',
              iconDataOne: Icons.history_toggle_off_outlined,
              iconDataTwo: Icons.arrow_forward_ios_rounded,
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                context.read<LocalizationsCubit>().changeLanguage('en');
              },
              child: const _ProfileListTile(
                title: 'İngilizce',
                subTitle: 'Pay your bill',
                iconDataOne: Icons.payment_outlined,
                iconDataTwo: Icons.arrow_forward_ios_rounded,
              ),
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                context.read<LocalizationsCubit>().changeLanguage('tr');
              },
              child: const _ProfileListTile(
                title: 'Türkçe',
                subTitle: 'Your delivery location',
                iconDataOne: Icons.location_on_outlined,
                iconDataTwo: Icons.arrow_forward_ios_rounded,
              ),
            ),
            _ListTileHeigt(),
            InkWell(
              onTap: () {
                 context.read<ThemeCubit>().toggleTheme();
              },
              child: const _ProfileListTile(
                title: 'Dark/Light Theme',
                subTitle: 'Change Now',
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
          'Edit Profile', style: Theme.of(context).textTheme.labelLarge?.copyWith(
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