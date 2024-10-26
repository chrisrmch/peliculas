import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Container(
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: size.height * 0.6,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.7,
        itemHeight: size.height * 0.5,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () =>
                {Navigator.pushNamed(context, 'details', arguments: movie)},
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: FadeInImage(
                fit: BoxFit.fill,
                placeholder: NetworkImage('https://placehold.co/300x400'),
                image: AssetImage('assets/no-image.jpg'),
              ),
            ),
          );
        },
      ),
    );
  }
}
