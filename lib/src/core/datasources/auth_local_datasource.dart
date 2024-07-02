
import '../model/user.dart';

class AuthLocalDatasource {
  User? getCurrentUser(){
    // Pega usuário no FlutterSecureStorage.
    return User(name: 'Laoslcs');
  }
}