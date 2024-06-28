
import 'package:flutter_schemes/src/features/classModifiers/funcionarios.dart';

class Paciente extends Funcionario {
  Paciente({
    required super.nome,
    required super.sexo,
    required this.dataInternacao, required super.dataAdmissao, required super.matricula,
  }); 

  DateTime dataInternacao;
  
  @override
  void calcularImpostoDeRenda() {
  }
  
  @override
  void calcularImpostos() {
  }
  
  @override
  void calcularSalario() {
  }
}
