import 'package:flutter/foundation.dart';

class Urunler {
  final String id;
  final String recipeCategoryId;
  final String recipeCategoryTitle;
  final String title;
  final String duration;
  final String imagePath;

  const Urunler({
    required this.id,
    required this.recipeCategoryId,
    required this.recipeCategoryTitle,
    required this.title,
    required this.duration,
    required this.imagePath,
  });
}
