import 'app_state.dart';

void main() {
  AppState state = const Loading();

  // Simulando a mudança de estados
  state = const Loaded("Dados carregados com sucesso!");

  // Verificando o tipo de estado e agindo conforme necessário usando switch
  switch (state) {
    case Loading():
      print("Carregando...");
      break;
    case Loaded(:final data):
      print("Dados: $data");
      break;
    case Error(:final message):
      print("Erro: $message");
      break;
  }
}

