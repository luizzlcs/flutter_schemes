import 'package:flutter/material.dart';

class SwitchListTileWiget extends StatelessWidget {
  const SwitchListTileWiget({
    super.key,
    required this.toggle,
    required this.function,
    required this.lightBulbColors,
    required this.titleColor,
  });

  final bool toggle;
  final Function(bool) function;
  final Color lightBulbColors;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Lights',
        style: TextStyle(color: titleColor),
      ),
      value: toggle,
      onChanged: (bool value) {
        function(value);
      },
      secondary: Icon(
        Icons.lightbulb_outline,
        color: lightBulbColors,
      ),
    );
  }
}
