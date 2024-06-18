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
        title: const Text('Meu perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomButtonOne.primary(label: 'Botão 1', onPressed: () {}),
            CustomButtonOne.secondary(label: 'Botão 2', onPressed: () {}),
            CustomButtonOne.danger(label: 'Botão 3', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
