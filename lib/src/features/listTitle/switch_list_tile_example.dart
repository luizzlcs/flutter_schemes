import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/features/custonCard/custon_card.dart';
import 'switch_list_tile_widget.dart';

Widget preview() {
  return const CustomCard();
}

class SwitchListTileExample extends StatefulWidget {
  const SwitchListTileExample({super.key});

  @override
  State<SwitchListTileExample> createState() => _SwitchListTileExampleState();
}

class _SwitchListTileExampleState extends State<SwitchListTileExample> {
  bool toggle = false;

  void updateLights(bool newValue) {
    setState(() {
      toggle = newValue;
    });
    print('Chamando função $newValue');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veja Antes de Executar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTileWiget(
              toggle: toggle,
              function: updateLights,
              lightBulbColors: Colors.deepOrange,
              titleColor: Colors.blue,
            ),
            SwitchListTileWiget(
              toggle: toggle,
              function: updateLights,
              lightBulbColors: Colors.deepPurple,
              titleColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
