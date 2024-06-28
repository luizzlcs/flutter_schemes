import 'dart:developer';

/// Esta é uma classse abstrata que possui dois métodos.
/// 
/// > MÉTODOS:
///   1. **calcularImpost** -> este método que ainda não foi implementado;
///   2. **calcularIdadeEmAnos** -> este método já está implementado.
/// 
///  [Adventistas](https://www.adventistas.org/pt/)
/// <!--O link acima aacessa o site da Igreja Adventista-->
/// ```dart 
///  class Pessoa {
///     Pessoa(this.name,
///     this.age)
///     
///     final String name;
///     final int age;    
/// } 
/// ```
/// https://www.adventistas.org/pt/
abstract class Pessoa {
  String nome;
  String sexo;

  Pessoa({
    required this.nome,
    required this.sexo,
  });

  void calcularImpostos();

  void calcularIdadeEmAnos() {
    //Implemente o método aqui
    log('Calcular Idade da pessoa');
  }
}
