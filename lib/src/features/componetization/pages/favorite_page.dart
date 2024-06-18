import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/constructor_named/custom_button.dart';

List<Widget> preview(){
  return [
    const CustomButton.multiple(n1: 5, n2: 4),
    const CustomButton.sum(n1: 5, n2: 4),
    const CustomButton.subtraction(n1: 5, n2: 4),
  ];
}
class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    CustomButton multiplyButton = const CustomButton.multiple(n1: 5, n2: 4);
    CustomButton sumButton = const CustomButton.sum(n1: 5, n2: 4);
    CustomButton subtractButton = const CustomButton.subtraction(n1: 5, n2: 4);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Construtores nomeados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SizedBox(
          child: Column(
            children: [
              multiplyButton,
              sumButton,
              subtractButton,
            ],
          ),
        ),
      ),
    );
  }
}
