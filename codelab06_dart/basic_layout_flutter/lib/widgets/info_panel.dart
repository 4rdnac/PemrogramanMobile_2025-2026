import 'package:flutter/material.dart';
import 'stars.dart';
import 'info_item.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Strawberry Pavlova',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
              'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700], height: 1.5),
            ),
            const SizedBox(height: 24),
            const Stars(rating: 3, reviews: 170),
            const SizedBox(height: 24),
            const Divider(thickness: 1),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoItem(
                  icon: Icons.kitchen_outlined,
                  label: 'PREP:',
                  value: '25 min',
                ),
                InfoItem(
                  icon: Icons.timer_outlined,
                  label: 'COOK:',
                  value: '1 hr',
                ),
                InfoItem(
                  icon: Icons.people_outlined,
                  label: 'FEEDS:',
                  value: '4-6',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
