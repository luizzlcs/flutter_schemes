import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Schemes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/menu-page');
              },
              child: const Text('Componentização - MENU'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/switch');
              },
              child: const Text('SwitchListTileExample'),
            )
          ],
        ),
      ),
    );
  }
}
