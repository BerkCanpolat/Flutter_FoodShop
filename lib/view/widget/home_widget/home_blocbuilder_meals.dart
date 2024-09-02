part of '../../screens/home.dart';
class _HomeBlocBuilderAllMeals extends StatelessWidget {
  const _HomeBlocBuilderAllMeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, List<FoodModel>>(
      builder: (context, state) {
        if(state.isEmpty) {
          return const _HomeCircularWidget();
        }
        if(state.isNotEmpty) {
        return _HomeGridViewWidget(food_model: state,);
        } else {
          return const CircularProgressIndicator();
        }
      } 
    );
  }
}