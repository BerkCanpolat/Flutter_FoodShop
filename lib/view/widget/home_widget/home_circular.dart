part of '../../screens/home.dart';
class _HomeCircularWidget extends StatelessWidget {
  const _HomeCircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: Colors.orange,),);
  }
}