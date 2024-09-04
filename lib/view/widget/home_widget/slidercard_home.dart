part of '../../screens/home.dart';

class _SliderCardHomeBloc extends StatelessWidget {
  const _SliderCardHomeBloc({
    super.key,
    required this.myCardPageController,
    required this.cardModel,
  });

  final PageController myCardPageController;
  final List<SlidercardModel> cardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: BlocBuilder<SlidercardCubit, int>(
        builder: (context, state) {
          return SizedBox(
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: myCardPageController,
            onPageChanged: (value) {
              BlocProvider.of<SlidercardCubit>(context).changeSlider(value);
            },
            itemBuilder: (context, index) {
              var card = cardModel[index % cardModel.length];
              return Container(
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).cardColor
                ),
                child: _SliderCardColumn(card: card)
              );
            },
          ),
        );
        } 
      ),
    );
  }
}

class _SliderCardColumn extends StatelessWidget {
  const _SliderCardColumn({
    super.key,
    required this.card,
  });

  final SlidercardModel card;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _SliderCardNameText(card: card),
                  _SliderCardPriceText(card: card),
                 const  _SliderCardButton()
                ],
              ),
              Image.asset(card.img, fit: BoxFit.cover, height: 140,),
            ],
          ),
        )
      ],
    );
  }
}

class _SliderCardNameText extends StatelessWidget {
  const _SliderCardNameText({
    super.key,
    required this.card,
  });

  final SlidercardModel card;

  @override
  Widget build(BuildContext context) {
    return Text(
      card.name, style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      );
  }
}

class _SliderCardPriceText extends StatelessWidget {
  const _SliderCardPriceText({
    super.key,
    required this.card,
  });

  final SlidercardModel card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: 60,
        height: 38,
        decoration: BoxDecoration(
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            '${card.price} ₺', style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.orange[900],
              fontWeight: FontWeight.bold
            ),
            ),
        ),
      ),
    );
  }
}

class _SliderCardButton extends StatelessWidget {
  const _SliderCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextButton(
        onPressed: (){}, 
        child: Text(
          context.sliderButton, style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
        ),
      ),
    );
  }
}