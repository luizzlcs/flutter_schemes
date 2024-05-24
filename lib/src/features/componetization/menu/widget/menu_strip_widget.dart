import 'package:flutter/material.dart';

class MenuStripWidget extends StatelessWidget {
  const MenuStripWidget({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 27,
      decoration: const BoxDecoration(
        color: Color.fromARGB(31, 49, 1, 58),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 26,bottom: 4),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
