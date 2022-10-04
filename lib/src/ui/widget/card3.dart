import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350,
      // height: 500,
      // decoration: BoxDecoration(
      //     color: Color.fromARGB(31, 12, 191, 90),
      //     borderRadius: BorderRadius.circular(10)),
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
              children: [
                Chip(
                    label: Text('Vegan',
                        style: Theme.of(context).textTheme.bodyText1),
                    onDeleted: () {}),
                Chip(
                    label: Text('Healthy',
                        style: Theme.of(context).textTheme.bodyText1),
                    onDeleted: () {}),
                Chip(
                    label: Text('Carrots',
                        style: Theme.of(context).textTheme.bodyText1),
                    onDeleted: () {}),
                Chip(
                    label: Text('Vegan',
                        style: Theme.of(context).textTheme.bodyText1),
                    onDeleted: () {}),
                Chip(
                  label: Text('Carrots',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Chip(
                  label: Text('Vegan',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
