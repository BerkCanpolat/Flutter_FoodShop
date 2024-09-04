part of '../widget/bottomnavigation_widget.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {

  var changePage = [Home(), FavoritePage(), EmptyPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<BottomNavigationbarCubit,int>(
        builder: (context, state) {
          return changePage[state];
        },
        ),
      bottomNavigationBar: const _MainBottomNav(),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}