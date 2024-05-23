import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/componetization/menu/widget/meu_strip_widget.dart';

import '../../../core/constants/app_images.dart';
import 'widget/button_menu_widget.dart';

Widget preview(){
  return const MenuPage();
}
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'PAINEL DE CONTROLE',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 36,
          ),
          MenuStripWidget(
            label: 'Meu menu',
          ),
          ButtonMenuWidget(
            icon: AppImages.profile,
            label: 'Meu Perfil',
            router: '/my-profile',
          ),
          ButtonMenuWidget(
            icon: AppImages.student,
            label: 'Meus Cursos',
            router: '/my-courses',
          ),
          MenuStripWidget(
            label: 'Minhas informações',
          ),
          ButtonMenuWidget(
            icon: AppImages.heart,
            label: 'Favoritos',
            router: '/favorite',
          ),
          MenuStripWidget(
            label: 'Minhas informações',
          ),
          ButtonMenuWidget(
            icon: AppImages.info,
            label: 'Sobre o Sistema',
            router: '/about-system',
          ),
          ButtonMenuWidget(
            icon: AppImages.userProfile,
            label: 'Cadastre-se',
            router: '/register',
          ),
        ],
      ),
    );
  }
}
