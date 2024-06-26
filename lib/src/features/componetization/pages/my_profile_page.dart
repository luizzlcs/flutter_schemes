import 'package:flutter/material.dart';

import '../../constructor_named/cuton_button_one.dart';

Widget preview() {
  return const MyProfilePage();
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões Personalizados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomButtonOne.primary(
                label: 'Multiplicação',
                onPressed: () {
                  const n1 = 8;
                  const n2 = 6;
                  int result = n1 * n2;
                  print('A multiplicação de $n1 e $n2 é: $result');
                }),
            CustomButtonOne.secondary(
                label: 'Adição',
                onPressed: () {
                  const n1 = 8;
                  const n2 = 6;
                  int result = n1 * n2;
                  print('A soma de $n1 e $n2 é: $result');
                }),
            CustomButtonOne.danger(
                label: 'Subtração',
                onPressed: () {
                  const n1 = 8;
                  const n2 = 6;
                  int result = n1 * n2;
                  print('A Subtração de $n1 e $n2 é: $result');
                }),
          ],
        ),
      ),
    );
  }
}
