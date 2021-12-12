import 'package:flutter/material.dart';
import 'package:flutter_movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies in theatres"),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          CardSwiper(),
          // horizontal movie list
        ],
      ),
    );
  }
}
