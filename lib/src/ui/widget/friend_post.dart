import 'package:app_book/src/model/post.dart';
import 'package:flutter/material.dart';

class FriendPost extends StatelessWidget {
  final Post post;
  const FriendPost({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: FlutterLogo(
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.comment,
                textAlign: TextAlign.justify,
              ),
              Text(
                '${post.timestamp} min ago',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
