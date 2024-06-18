import 'package:flutter/material.dart';

List<Widget> preview() {
  return [
    CustomButtonOne.primary(label: 'Botão 1', onPressed: () {}),
    CustomButtonOne.secondary(label: 'Botão 2', onPressed: () {}),
    CustomButtonOne.danger(label: 'Botão 3', onPressed: () {}),
  ];
}

class CustomButtonOne extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const CustomButtonOne({
    super.key,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  const CustomButtonOne.primary({
    super.key,
    required this.label,
    required this.onPressed,
  }) : color = Colors.blue;

  const CustomButtonOne.secondary({
    super.key,
    required this.label,
    required this.onPressed,
  }) : color = Colors.grey;

  const CustomButtonOne.danger({
    super.key,
    required this.label,
    required this.onPressed,
  }) : color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
            ),
            onPressed: onPressed,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
           height: 16,
        ),
      ],
    );
  }
}
