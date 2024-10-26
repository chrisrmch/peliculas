import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 180,
        margin: EdgeInsets.only(bottom: 30),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const _CastCard();
          },
        ));
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: FadeInImage(
              height: 135,
              width: 110,
              fit: BoxFit.cover,
                placeholder: NetworkImage('https://placehold.co/200x300'),
                image: AssetImage("assets/no-image.jpg")),
          ), 
          SizedBox(
            height: 5,
          ),
          Text("actor.name asdfasd", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}