import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/core/constants/app_images.dart';

Widget preview() {
  return const ButtonMenuWidget(
    icon: AppImages.profile,
    label: 'Perfil do usuário',
    router: '/',
  );
}

class ButtonMenuWidget extends StatelessWidget {
  const ButtonMenuWidget({
    super.key,
    required this.icon,
    required this.label,
    this.router,
  });
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
