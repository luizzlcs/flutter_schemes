import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/componetization/menu/widget/template_control_panel_widget.dart';

import '../../../core/constants/app_images.dart';

Widget preview() {
  return const MenuPage();
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TemplateControlPanelWidget(
            titlePanel: 'PAINEL DE CONTROLE PÁGINAS CONTROLADAS',
            isTitlePanel: true,
            isButtonMenu: false,
            isStrip: false,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isStrip: true,
            isButtonMenu: false,
            stripLabel: 'Meu menu',
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isStrip: false,
            isButtonMenu: true,
            buttonMenuIcon: AppImages.profile,
            buttonMenuLabel: 'Meu Perfil',
            buttonMenuRouter: '/my-profile',
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.student,
            buttonMenuLabel: 'Meus Cursos',
            buttonMenuRouter: '/my-courses',
          ),
          TemplateControlPanelWidget(
            stripLabel: 'Minhas informações',
            isTitlePanel: false,
            isButtonMenu: false,
            isStrip: true,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.heart,
            buttonMenuLabel: 'Favoritos',
            buttonMenuRouter: '/favorite',
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.download,
            buttonMenuLabel: 'Certificados',
            buttonMenuRouter: '/certificate',
          ),
          TemplateControlPanelWidget(
            stripLabel: 'Preferências',
            isTitlePanel: false,
            isButtonMenu: false,
            isStrip: true,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.info,
            buttonMenuLabel: 'Sobre o Sistema',
            buttonMenuRouter: '/about-system',
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.userProfile,
            buttonMenuLabel: 'Cadastre-se',
            buttonMenuRouter: '/register',
          ),
        ],
      ),
    );
  }
}
