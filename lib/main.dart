import 'package:app_book/src/ui/page/home.dart';
import 'package:app_book/src/ui/theme/fooderlich_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final theme = FooderlichTheme.dark();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooderlich',
      home: const Home(),
      theme: theme,
    );
  }
}
