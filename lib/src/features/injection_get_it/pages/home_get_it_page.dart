import 'package:flutter/material.dart';
import '../../../core/injection/injection.dart';
import '../../../core/maneger/session_meneger.dart';


class HomePageGetIt extends StatelessWidget {
  const HomePageGetIt({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionMeneger sessionManeger = getIt();
    print('hasCode: ${sessionManeger.hashCode}');
    return Scaffold(
      appBar: AppBar(
        title: Text(sessionManeger.user?.name ?? 'Não logado'),
      ),
      body: Container(),
    );
  }
}
