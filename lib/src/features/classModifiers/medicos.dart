
import 'funcionarios.dart';
abstract class Medicos extends Funcionario {
  Medicos({
    required super.nome,
    required super.sexo,
    required super.dataAdmissao,
    required super.matricula,
    required this.crm,
  });

  final String crm;
  void operar(){
    print('Faz cirurgia geral');
  }
  
  
}
