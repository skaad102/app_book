import 'package:app_book/src/ui/theme/fooderlich_theme.dart';
import 'package:app_book/src/ui/widget/author_card.dart';
import 'package:flutter/material.dart';

import '../../model/explore_recipe.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card2({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage('assets/bread.jpg'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            AuthorCard(authorName: recipe.authorName, title: recipe.role),
            Positioned(
              bottom: 16,
              right: 16,
              child: Text(
                "Recipe",
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 70,
              left: 16,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Somethine",
                  style: FooderlichTheme.lightTextTheme.headline1,
                ),
              ),
            )
          ],
        ));
  }
}
