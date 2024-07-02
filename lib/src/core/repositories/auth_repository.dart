import 'package:flutter_schemes/src/core/datasources/auth_local_datasource.dart';
import 'package:flutter_schemes/src/core/datasources/auth_remote_datasource.dart';
import 'package:flutter_schemes/src/core/model/user.dart';

class AuthRepository {
  AuthRepository(
    this.localDatasource,
    this.remoteDatasource,
  );

  final AuthRemoteDatasource remoteDatasource;
  final AuthLocalDatasource localDatasource;

  User? getCurrentUser() {
    User? user = localDatasource.getCurrentUser();
    user ??= remoteDatasource.getCurrentUser();
    return user;
  }
}
