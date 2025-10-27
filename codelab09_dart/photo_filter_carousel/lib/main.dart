import 'package:flutter/material.dart';
import 'widget/filter_carousel.dart';

Future<void> main() async {
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
