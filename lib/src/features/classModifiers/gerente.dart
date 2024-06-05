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
    // TODO: implement calcularImpostoDeRenda
  }

  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
  }
}
