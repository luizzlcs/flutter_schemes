import 'package:flutter/material.dart';

/// Botão customizado para fazer o cálculo de três operações:
/// Multiplicação, adição e subtração.
///
/// **Para utilizar faça assim:**
///
/// ```dart
///     CustomButton.multiple(n1: 5, n2: 4) // O resultado da Multiplicação é 20.
/// ```
class CustomButton extends StatelessWidget {
  /// Recebe o nome de uma operação
  final String operation;

  /// Define a cor do botão
  final Color color;

  /// Define o tamanho do título para o botão.
  final double titleSize;

  /// Recebe o resultado da operação feita para dois números.
  final int result;

  /// Esta função imprime um texto.
  void printText(){
    print('Imprimir texto');
  }

  // Construtor principal
  const CustomButton({
    super.key,
    required this.operation,
    required this.color,
    required this.titleSize,
    required this.result,
  });

  /// Este construtor realização uma multiplicação e coloca a cor do botão em verde limão.
  const CustomButton.multiple({
    super.key,
    this.operation = 'Multiplicação',
    this.color = Colors.green,
    this.titleSize = 18,
    required int n1,
    required int n2,
  }) : result = n1 * n2;

  const CustomButton.sum({
    super.key,
    this.operation = 'Adição',
    this.color = Colors.blue,
    this.titleSize = 18,
    required int n1,
    required int n2,
  }) : result = n1 + n2;

  const CustomButton.subtraction({
    super.key,
    this.operation = 'Subtração',
    this.color = Colors.red,
    this.titleSize = 18,
    required int n1,
    required int n2,
  }) : result = n1 - n2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              print('O resultado da $operation é $result');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
            ),
            child: Text(operation,
                style: TextStyle(
                  fontSize: titleSize,
                  color: Colors.white,
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
