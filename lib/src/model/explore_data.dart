import 'post.dart';
import 'explore_recipe.dart';

class ExploreData {
  final List<ExploreRecipe> todayRecipes;
  final List<Post> friendPosts;

  ExploreData(
    this.todayRecipes,
    this.friendPosts,
  );
}
