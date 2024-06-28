import 'funcionarios.dart';

final class Gerente extends Funcionario {
  Gerente({
    required super.nome,
    required super.sexo,
    required super.dataAdmissao,
    required super.matricula,
  });
  
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
