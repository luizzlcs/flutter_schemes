import 'dart:developer';

class Animal {
  Animal({
    required this.nome,
    required this.tipoBarulho,
  });

  String nome;
  String tipoBarulho;

  void fazBarulho() {
    log('O $nome faz o barulho $tipoBarulho!');
  }
}
