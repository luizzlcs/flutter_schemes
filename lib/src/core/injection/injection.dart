import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_schemes/src/core/datasources/auth_local_datasource.dart';
import 'package:flutter_schemes/src/core/datasources/auth_remote_datasource.dart';
import 'package:flutter_schemes/src/core/maneger/session_meneger.dart';
import 'package:flutter_schemes/src/core/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;
void configureDependencies(){

  debugPrint('Inicio da configuração de dependência');
  
  // final sessionMeneger = SessionMeneger();

  // debugPrint(sessionMeneger.hashCode.toString());
  getIt.registerSingleton(Dio());
  getIt.registerFactory(() => AuthRemoteDatasource(getIt()));
  getIt.registerFactory(() => AuthLocalDatasource(),);
  getIt.registerFactory(() => AuthRepository(getIt(), getIt()));
  getIt.registerSingleton(SessionMeneger(getIt())); // Carega logo no ínicio

  // getIt.registerLazySingleton(() => SessionMeneger()); // Carregamento preguiçoso.

  // getIt.registerFactory(() => SessionMeneger());

  debugPrint('Fim da configuração de dependência');
}