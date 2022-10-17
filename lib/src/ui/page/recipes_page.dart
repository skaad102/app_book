import 'package:app_book/src/model/simple_recipe.dart';
import 'package:app_book/src/service/mock_fooderlinch_service.dart';
import 'package:flutter/material.dart';

import '../widget/recipe/grid_view.dart';

class RecipesPage extends StatelessWidget {
  final exploreService = MockFooderlichService();
  RecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data ?? [];
          return RecipesGridView(
            recipes: recipes,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
