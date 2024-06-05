import 'animal.dart';

class Gato extends Animal {
  Gato({
    required super.nome,
    required super.tipoBarulho,
  });

  @override
  void fazBarulho(){
    print('O gato $nome faz cocô e $tipoBarulho todo santo dia!');
  }

  void fazCaca(){
    print('Só dá trabalho!');
  }
}


void main(){
  Gato gato = Gato(nome: 'Pichano', tipoBarulho: 'Miau!');

  gato.fazCaca();
}