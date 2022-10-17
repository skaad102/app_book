import 'package:app_book/src/model/simple_recipe.dart';
import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  final SimpleRecipe recipe;
  const RecipeThumbnail({required this.recipe, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // color: Colors.grey[400],
        border: Border.all(color: Colors.grey[400]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: FlutterLogo(
                size: 120,
                style: FlutterLogoStyle.horizontal,
              ),
              // child: Container(
              //   width: 54,
              //   height: 54,
              //   color: Colors.green,
              // ),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            recipe.title,
            textAlign: TextAlign.left,
            style: textTheme.headline4,
          ),
          Text(
            recipe.duration,
            textAlign: TextAlign.left,
            style: textTheme.headline5,
          )
        ],
      ),
    );
  }
}
