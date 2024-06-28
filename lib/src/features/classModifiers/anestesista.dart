
import 'package:flutter_schemes/src/features/classModifiers/medicos.dart';

class Anestesista extends Medico{
  Anestesista({required super.nome, required super.sexo, required super.crm});

}

void main() {
  int resultadoOperacao = aplicarOperacao(10, duplicarNumero);

  print('Resultado da operação $resultadoOperacao');
}

int aplicarOperacao(int numero, int Function(int) operacao) {
  return operacao(numero);
}

int duplicarNumero(int numero) {
  return numero * 2;
}
