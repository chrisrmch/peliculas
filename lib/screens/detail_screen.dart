import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _customAppBar(),
          SliverList(
              delegate: SliverChildListDelegate(
                  [_PosterAndTitle(), const _Overview(), CastingCards()]))
        ],
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: FadeInImage(
              height: 150,
              placeholder: NetworkImage('https://placehold.co/200x300'),
              image: AssetImage("assets/no-image.jpg"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.title',
                style: textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.originalTitle',
                style: textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    size: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "movie.voteAverage",
                    style: textTheme.bodySmall,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.titleMedium,
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec enim fermentum, maximus nisi vitae, dictum tellus. Donec ipsum ante, egestas vel nisi ut, tincidunt vulputate odio. Aenean euismod ullamcorper mi eu ullamcorper. Morbi consectetur ipsum maximus massa fermentum, a vestibulum nisi maximus. Maecenas at nisi sit amet purus placerat vulputate. Donec eget dui blandit felis rutrum elementum eu eu erat. Morbi feugiat nulla vel lorem tincidunt, sit amet auctor metus ultrices. Praesent nibh ex, vestibulum eget tristique non, varius dictum nisl. Donec rhoncus nisi est, non sagittis lorem fringilla nec. Etiam quis lectus quis eros molestie vulputate a volutpat massa. In hac habitasse platea dictumst. Curabitur a dictum risus. Fusce ac magna metus. Donec aliquet sit amet orci vel mattis. Nullam vestibulum felis vel nunc fermentum accumsan. Nullam at venenatis diam. Etiam hendrerit ex tellus, et ultrices mi fermentum nec. Pellentesque ultrices posuere arcu, non sollicitudin mauris malesuada in."),
    );
  }
}

class _customAppBar extends StatelessWidget {
  const _customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black12,
            child: const Text(
              "movie.title",
              style: TextStyle(fontSize: 16),
            )),
        background: const FadeInImage(
          placeholder: NetworkImage('https://placehold.co/500x300'),
          image: AssetImage("assets/no-image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
