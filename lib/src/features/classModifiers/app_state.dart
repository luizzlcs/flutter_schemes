sealed class AppState {
  const AppState();
}

class Loading extends AppState {
  const Loading();
}
class Loaded extends AppState {
  final String data;
  const Loaded(this.data);
}

class Error extends AppState {
  final String message;
  const Error(this.message);
}