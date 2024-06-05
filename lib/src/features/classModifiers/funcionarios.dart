import 'package:flutter_schemes/src/features/classModifiers/pessoa.dart';

@Deprecated('O nome dessa classe será modificada para "Colaborador"')
 abstract class Funcionario extends Pessoa {
  Funcionario({
    required super.nome,
    required super.sexo,
    required this.dataAdmissao,
    required this.matricula,
  });

  final DateTime dataAdmissao;
  final String matricula;
  void calcularSalario();
  void calcularImpostoDeRenda();
}

