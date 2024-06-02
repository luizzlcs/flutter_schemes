import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'button_menu_widget.dart';
import 'menu_strip_widget.dart';

class TemplateControlPanelWidget extends StatelessWidget {
  const TemplateControlPanelWidget({
    super.key,
    required this.isTitlePanel,
    required this.isStrip,
    required this.isButtonMenu,
    this.titlePanel,
    this.stripLabel,
    this.buttonMenuIcon,
    this.buttonMenuLabel,
    this.buttonMenuRouter,
  });
  final bool isTitlePanel;
  final bool isStrip;
  final bool isButtonMenu;
  final String? titlePanel;
  final String? stripLabel;
  final String? buttonMenuIcon;
  final String? buttonMenuLabel;
  final String? buttonMenuRouter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(
          visible: isTitlePanel,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 25, bottom: 25, left: 8, right: 8),
            child: FittedBox(
              fit: BoxFit.contain,
              child: SelectableText(
                '$titlePanel',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                contextMenuBuilder: (context, editableTextState) {
                  final List<ContextMenuButtonItem> buttonItems =
                      editableTextState.contextMenuButtonItems;

                  // Remova a opção de cópia
                  // buttonItems.removeWhere((buttonItem) =>
                  //     buttonItem.type == ContextMenuButtonType.copy);

                  buttonItems.insert(
                      0,
                      ContextMenuButtonItem(
                          label: 'Enviar e-mail',
                          onPressed: () {
                            debugPrint('Enviando e-mail...');
                          }));

                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: editableTextState.contextMenuAnchors,
                    buttonItems: buttonItems,
                  );
                },
              ),
            ),
          ),
        ),
        Visibility(
          visible: isStrip,
          child: MenuStripWidget(
            label: stripLabel ?? '',
          ),
        ),
        Visibility(
          visible: isButtonMenu,
          child: ButtonMenuWidget(
            icon: buttonMenuIcon ?? '',
            label: buttonMenuLabel ?? '',
            router: buttonMenuRouter,
          ),
        ),
      ],
    );
  }
}
