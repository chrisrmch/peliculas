import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';

class CardSwiper extends StatelessWidget {
  final List<Movie> movies;

  const CardSwiper({super.key, required this.movies});

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
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.7,
        itemHeight: size.height * 0.5,
        itemBuilder: (_, int index) {
          final movie = movies[index];

          return GestureDetector(
            onTap: () =>
                {Navigator.pushNamed(context, 'details', arguments: movie)},
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: FadeInImage(
                fit: BoxFit.fill,
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(movie.fullPosterImg),
              ),
            ),
          );
        },
      ),
    );
  }
}
