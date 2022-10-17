import 'package:flutter/material.dart';

import '../../model/explore_recipe.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card3({Key? key, required this.recipe}) : super(key: key);

  List<Widget> createChips() {
    final chips = <Widget>[];
    recipe.tags.take(6).forEach((element) {
      final chip = Chip(
        label: Text(element),
        backgroundColor: Colors.black.withOpacity(0.07),
        labelStyle: const TextStyle(color: Colors.black),
      );
      chips.add(chip);
    });
    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 500,
        width: 350,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        image: const DecorationImage(
          image: AssetImage('assets/bread.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Recipe',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              children: createChips(),
            ),
          ),
        ],
      ),
    );
  }
}
