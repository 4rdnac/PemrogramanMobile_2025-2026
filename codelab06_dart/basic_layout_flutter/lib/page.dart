import 'package:flutter/material.dart';
import 'widgets/info_panel.dart';
import 'widgets/image_box.dart';

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          constraints: const BoxConstraints(maxWidth: 900),
          child: Card(
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: InfoPanel()),
                Expanded(flex: 3, child: ImageBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
