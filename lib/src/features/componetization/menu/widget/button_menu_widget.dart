import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';

Widget preview() {
  return const ButtonMenuWidget(
    icon: AppImages.profile,
    label: 'Perfil do usuário',
    router: '/',
  );
}
/// Esse Widget gera um botão com parâmetros para receber uma imagem um nome e uma rota nomeada.
/// 
/// O [icon] recebe o caminho de uma imagem.
/// 
/// O [label] recebe um nome para o botão.
/// 
/// A [`router`] recebe uma string de rota nomeada de uma página.
class ButtonMenuWidget extends StatelessWidget {
  const ButtonMenuWidget({
    super.key,
    required this.icon,
    required this.label,
    this.router,
  });

  /// Recebe um caminho de uma imagem
  final String icon;
  final String label;
  final String? router;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: SizedBox(
        width: double.infinity,
        child: TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('$router');
          },
          icon: Image.asset(icon),
          label: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.normal),
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
}

