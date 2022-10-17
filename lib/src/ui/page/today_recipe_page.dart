import 'package:app_book/src/model/explore_recipe.dart';
import 'package:app_book/src/ui/widget/card1.dart';
import 'package:flutter/material.dart';

import '../widget/card2.dart';
import '../widget/card3.dart';

class TodayRecipePage extends StatelessWidget {
  final List<ExploreRecipe> recipes;
  const TodayRecipePage({Key? key, required this.recipes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final styleCustom = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Today Recipe Page 🥘', style: styleCustom.headline1),
          const SizedBox(height: 16),
          Container(
            // width: double.infinity,
            height: size.height * 0.5,
            color: Colors.transparent,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, i) {
                final recipe = recipes[i];
                return buildCard(recipe);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
