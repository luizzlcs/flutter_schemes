import 'package:flutter/material.dart';

List<Widget> preview() {
  return [
    const CustomCard.info(
      title: 'Informação',
      subtitle: 'Informações de controle de acesso ao painel',
    ),
    const CustomCard.alert(
      title: 'Alerta',
      subtitle: 'Mensagens de alerta sobre terminado conteúdo!',
    ),
    const CustomCard.success(
      title: 'Sucesso',
      subtitle: 'Messagem de sucesso na atividade!',
    ),
  ];
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final double elevation;

  // Construtor principal
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.elevation,
  });

  // Construtor nomeado para um cartão de informação
  const CustomCard.info({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.info,
    this.color = Colors.blue,
    this.elevation = 2.0,
  });

  // Construtor nomeado para um cartão de alerta
  const CustomCard.alert({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.warning,
    this.color = Colors.red,
    this.elevation = 4.0,
  });

  // Construtor nomeado para um cartão de sucesso
  const CustomCard.success({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.check_circle,
    this.color = Colors.green,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
