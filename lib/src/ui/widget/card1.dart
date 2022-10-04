import 'package:flutter/material.dart';

import '../theme/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor Choice';
  final String notitle = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 500,
      decoration: BoxDecoration(
          color: const Color.fromARGB(31, 74, 96, 235),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/bread.jpg'),
          )),
      child: Stack(children: [
        Text(
          category,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        Positioned(
          top: 20,
          child: Text(
            notitle,
            style: FooderlichTheme.darkTextTheme.headline2,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          child: Text(
            description,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Text(
            chef,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
        ),
      ]),
    );
  }
}
