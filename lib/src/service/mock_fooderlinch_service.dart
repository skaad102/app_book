import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/explore_data.dart';
import '../model/explore_recipe.dart';
import '../model/post.dart';
import '../model/simple_recipe.dart';

class MockFooderlichService {
  Future<ExploreData> getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayRecipes, friendPosts);
  }

  Future<List<ExploreRecipe>> _getTodayRecipes() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['recipes'] == null) return [];
    // Convert json to ExploreRecipe
    final recipes = <ExploreRecipe>[];
    json['recipes'].forEach((v) {
      recipes.add(ExploreRecipe.fromJson(v));
    });
    return recipes;
  }

// Get the sample friend json posts to display in ui
  Future<List<Post>> _getFriendFeed() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    // Load json from file system
    final dataString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    // Decode to json
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['feed'] == null) return [];
    // Convert json to ExploreRecipe
    final post = <Post>[];
    json['feed'].forEach((v) {
      post.add(Post.fromJson(v));
    });
    return post;
  }

  Future<List<SimpleRecipe>> getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_recipes.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['recipes'] == null) return [];
    final recipes = <SimpleRecipe>[];
    json['recipes'].forEach((v) {
      recipes.add(SimpleRecipe.fromJson(v));
    });
    return recipes;
  }

  // Loads sample json data from file system
  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
