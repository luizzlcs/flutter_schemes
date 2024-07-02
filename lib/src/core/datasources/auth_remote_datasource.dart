import 'package:dio/dio.dart';
import 'package:flutter_schemes/src/core/model/user.dart';

class AuthRemoteDatasource {
  AuthRemoteDatasource(this.dio);
  final Dio dio;

  User? getCurrentUser() {
    // Pega usuário no Dio.
    return User(name: 'Lucicleide Silva');
  }
}
