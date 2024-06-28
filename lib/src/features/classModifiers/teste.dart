import 'dart:developer';

import 'app_state.dart';

void main() {
  AppState state = const Loading();

  // Simulando a mudança de estados
  state = const Loaded("Dados carregados com sucesso!");

  // Verificando o tipo de estado e agindo conforme necessário usando switch
  switch (state) {
    case Loading():
      log("Carregando...");
      break;
    case Loaded(:final data):
      log("Dados: $data");
      break;
    case Error(:final message):
      log("Erro: $message");
      break;
  }
}

