import 'package:flutter/material.dart';

enum Difficulty {
  Simple,
  Challenging,
  Hard,
}

class Category {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;
  final Difficulty difficulty;
  final String time;

  const Category(
      {@required this.imageUrl,
      @required this.id,
      @required this.title,
      @required this.difficulty,
      @required this.time,
      this.color = Colors.orange});
}
