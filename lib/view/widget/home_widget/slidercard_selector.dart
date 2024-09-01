part of '../../screens/home.dart';

class _SliderCardSelector extends StatefulWidget{
  const _SliderCardSelector({
    super.key,
    required this.cardModel,
  });

  final List<SlidercardModel> cardModel;

  @override
  State<_SliderCardSelector> createState() => _SliderCardSelectorState();
}

class _SliderCardSelectorState extends State<_SliderCardSelector> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlidercardCubit, int>(
      builder: (context, state) {
        return TabPageSelector(
          color: Colors.white,
          selectedColor: Colors.orange,
          indicatorSize: 9,
        controller: TabController(length: widget.cardModel.length, vsync: this, 
        initialIndex: state % widget.cardModel.length
        ),
      );
      } 
    );
  }
}