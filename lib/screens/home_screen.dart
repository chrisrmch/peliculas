import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peliculas en cines"),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            MovieSlider()
          ],
        ),
      )
    );
  }
}
