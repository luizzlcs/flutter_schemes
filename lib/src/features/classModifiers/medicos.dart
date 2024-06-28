import 'dart:developer';

import 'pessoa.dart';

class Medico extends Pessoa {
  Medico({
    required super.nome,
    required super.sexo,
    required this.crm,
  });

  final String crm;

  @override
  void calcularImpostos() {
   
    log('Calcula imposto');
  }
}

void main() {
  Medico medico = Medico(
    crm: '1552',
    nome: 'João',
    sexo: 'M',
  );

   medico.calcularIdadeEmAnos();
  
}
