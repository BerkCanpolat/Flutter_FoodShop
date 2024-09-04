part of '../../screens/home.dart';
class _HomeCircularWidget extends StatelessWidget {
  const _HomeCircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(color: Colors.orange,),);
  }
}