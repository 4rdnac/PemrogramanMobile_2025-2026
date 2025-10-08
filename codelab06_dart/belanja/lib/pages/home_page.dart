import 'package:flutter/material.dart';
import '../services/item_service.dart';
import '../widgets/item_grid.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ItemService.getItems();

    return Scaffold(
      appBar: AppBar(title: const Text('Belanja')),
      body: ItemGrid(
        items: items,
        onItemTap: (Item item) {
          Navigator.pushNamed(context, '/item', arguments: item);
        },
      ),
    );
  }
}
