import 'package:app_book/src/ui/widget/friend_post.dart';
import 'package:flutter/material.dart';

import '../../model/post.dart';

class FriendPostList extends StatelessWidget {
  final List<Post> posts;
  const FriendPostList({required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chefs ! ', style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16),
          Expanded(child: _buildPostList(posts)),
        ],
      ),
    );
  }

  Widget _buildPostList(List<Post> posts) {
    return ListView.separated(
      primary: false,
      // physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: false,
      itemCount: posts.length,
      itemBuilder: (_, index) {
        final post = posts[index];
        return FriendPost(post: post);
      },
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
        child: Divider(
          color: Colors.white,
          height: 4,
        ),
      ),
    );
  }
}
