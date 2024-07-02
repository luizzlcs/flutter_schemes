
import 'package:flutter_schemes/src/core/repositories/auth_repository.dart';

import '../model/user.dart';

class SessionMeneger {
  SessionMeneger( this.authRepository){
    print('Construção do SessionManager');
    _getCurrentUser();
  }

  final AuthRepository authRepository;
  User? user;


  void _getCurrentUser(){
     user = authRepository.getCurrentUser();
  }
}
