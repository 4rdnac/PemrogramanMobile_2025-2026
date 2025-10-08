import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int rating;
  final int reviews;

  const Stars({
    super.key,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    final icons = List<Widget>.generate(5, (i) {
      return Icon(
        i < rating ? Icons.star : Icons.star_border,
        color: Colors.green[500],
        size: 22,
      );
    });

    return Row(
      children: [
        ...icons,
        const SizedBox(width: 10),
        Text(
          '$reviews Reviews',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
