part of '../widget/bottomnavigation_widget.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int myCurrentIndex = 0;

  var changePage = [Home(), Center(child: Container(child: Text('İKİNCİ SAYFA'))), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationbarCubit,int>(
        builder: (context, state) {
          return changePage[state];
        },
        ),
      bottomNavigationBar: const _MainBottomNav()
    );
  }
}