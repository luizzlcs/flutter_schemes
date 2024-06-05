
import 'pessoa.dart';
class Paciente extends Pessoa {
  Paciente({
    required super.nome,
    required super.sexo,
    required this.dataInternacao,
  });

  DateTime dataInternacao;
}
