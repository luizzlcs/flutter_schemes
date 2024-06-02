import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/componetization/menu/widget/menu_strings_mixin.dart';
import 'package:flutter_schemes/src/features/componetization/menu/widget/template_control_panel_widget.dart';
import '../../../core/constants/app_images.dart';

Widget preview() {
  return MenuPage();
}

class MenuPage extends StatelessWidget with MenuStringsMixin {
  MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const titlePanel = 'PAINEL DE CONTROLE PÁGINAS CONTROLADAS';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TemplateControlPanelWidget(
            titlePanel: titlePanel,
            isTitlePanel: true,
            isButtonMenu: false,
            isStrip: false,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isStrip: true,
            isButtonMenu: false,
            stripLabel: stripLabelMyMenu,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isStrip: false,
            isButtonMenu: true,
            buttonMenuIcon: AppImages.profile,
            buttonMenuLabel: buttonMenuLabelMeuPerfil,
            buttonMenuRouter: buttonMenuRouterMyProfile,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.student,
            buttonMenuLabel: buttonMenuLabelMyCourses,
            buttonMenuRouter: buttonMenuRouterMyCourses,
          ),
          TemplateControlPanelWidget(
            stripLabel: stripLabelMyInfo,
            isTitlePanel: false,
            isButtonMenu: false,
            isStrip: true,
          ),
          TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.heart,
            buttonMenuLabel: buttonMenuLabelFavorite,
            buttonMenuRouter: buttonMenuRouterFavorite,
          ),
          const TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.download,
            buttonMenuLabel: 'Certificados',
            buttonMenuRouter: '/certificate',
          ),
          const TemplateControlPanelWidget(
            stripLabel: 'Preferências',
            isTitlePanel: false,
            isButtonMenu: false,
            isStrip: true,
          ),
          const TemplateControlPanelWidget(
            isTitlePanel: false,
            isButtonMenu: true,
            isStrip: false,
            buttonMenuIcon: AppImages.info,
            buttonMenuLabel: 'Sobre o Sistema',
            buttonMenuRouter: '/about-system',
          ),
          const TemplateControlPanelWidget(
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
