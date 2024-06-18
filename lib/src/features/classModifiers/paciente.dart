
import 'package:flutter_schemes/src/features/classModifiers/funcionarios.dart';

import 'pessoa.dart';
class Paciente extends Funcionario {
  Paciente({
    required super.nome,
    required super.sexo,
    required this.dataInternacao, required super.dataAdmissao, required super.matricula,
  }); 

  DateTime dataInternacao;
  
  @override
  void calcularImpostoDeRenda() {
    // TODO: implement calcularImpostoDeRenda
  }
  
  @override
  void calcularImpostos() {
    // TODO: implement calcularImpostos
  }
  
  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
  }
}
