import 'package:flutter/material.dart';

import '../../model/explore_recipe.dart';
import '../theme/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card1({Key? key, required this.recipe}) : super(key: key);

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
          recipe.subtitle,
          style: FooderlichTheme.darkTextTheme.bodyText1,
        ),
        Positioned(
          top: 20,
          child: Text(
            recipe.title,
            style: FooderlichTheme.darkTextTheme.headline2,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          child: Text(
            recipe.message,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Text(
            recipe.authorName,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
        ),
      ]),
    );
  }
}
