import 'package:flutter/material.dart';

import '../../constructor_named/custom_card.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    CustomCard information = const CustomCard.info(
        title: 'Informação', subtitle: 'Cartão de informações');
    CustomCard alert = const CustomCard.alert(
        title: 'Atenção', subtitle: 'Cartão com conteúdo de atenção');
    CustomCard success = const CustomCard.success(
        title: 'Sucesso', subtitle: 'Cartão com conteúdo de sucesso');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus cursos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            information,
            success,
            alert,
          ],
        ),
      ),
    );
  }
}
