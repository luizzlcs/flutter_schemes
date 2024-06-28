import 'dart:developer';

import 'animal.dart';

class Gato extends Animal {
  Gato({
    required super.nome,
    required super.tipoBarulho,
  });

  @override
  void fazBarulho(){
    log('O gato $nome faz cocô e $tipoBarulho todo santo dia!');
  }

  void fazCaca(){
    log('Só dá trabalho!');
  }
}


void main(){
  Gato gato = Gato(nome: 'Pichano', tipoBarulho: 'Miau!');

  gato.fazCaca();
}