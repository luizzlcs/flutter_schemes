import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/listTitle/switch_list_tile_example.dart';

List<Widget> preview() {
  return [
    // const CustomCard(),
    const SwitchListTileExample(),
  ];
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'Custom Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
