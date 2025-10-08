import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_card.dart';

class ItemGrid extends StatelessWidget {
  final List<Item> items;
  final void Function(Item) onItemTap;

  const ItemGrid({super.key, required this.items, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 600 ? 3 : 2;

    const double spacing = 12.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: spacing / 2),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: spacing / 2, bottom: spacing / 2),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,

          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(item: item, onTap: () => onItemTap(item));
        },
      ),
    );
  }
}
