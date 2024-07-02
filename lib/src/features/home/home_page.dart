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
            const SizedBox(
               height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/switch');
              },
              child: const Text('SwitchListTileExample'),
            ),
            const SizedBox(
               height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/couter');
              },
              child: const Text('Contador'),
            ),
            const SizedBox(
               height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/couter-stateless');
              },
              child: const Text('Contador Stateless'),
            ),
            
            const SizedBox(
               height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/couter2');
              },
              child: const Text('Contador II'),
            ),
            const SizedBox(
               height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: const Text('Login (Get_It)'),
            ),
          ],
        ),
      ),
    );
  }
}
