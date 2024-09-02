part of '../../screens/home.dart';

class _HomeAllMealsTextWidget extends StatelessWidget {
  const _HomeAllMealsTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 35, bottom: 25),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Color(0xFFe85d04),
          borderRadius: BorderRadius.circular(13)
        ),
        child: Center(
          child: Text(
            context.homeAllCategoryText, style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
      ),
    );
  }
}