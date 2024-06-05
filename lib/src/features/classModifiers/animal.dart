class Animal {
  Animal({
    required this.nome,
    required this.tipoBarulho,
  });

  String nome;
  String tipoBarulho;

  void fazBarulho() {
    print('O $nome faz o barulho $tipoBarulho!');
  }
}
