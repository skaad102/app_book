import 'package:app_book/src/model/explore_data.dart';
import 'package:app_book/src/service/mock_fooderlinch_service.dart';
import 'package:app_book/src/ui/widget/friend_post_list.dart';
import 'package:flutter/material.dart';

import 'today_recipe_page.dart';

class ExplorePage extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            final posts = snapshot.data?.friendPosts ?? [];
            return ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipePage(recipes: recipes),
                const SizedBox(
                  height: 16,
                ),
                FriendPostList(posts: posts)
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
