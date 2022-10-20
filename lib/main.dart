import 'package:app_suntec/cubits/auth_cubit.dart';
import 'package:app_suntec/app.dart';
import 'package:app_suntec/data_source/firebase_datasource.dart';
import 'package:app_suntec/repository/auth_repository.dart';
import 'package:app_suntec/repository/implementation/auth_repository.dart';
import 'package:app_suntec/repository/implementation/user_repository.dart';
import 'package:app_suntec/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_suntec/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  await injectDependencias();

  runApp(BlocProvider(
    create: (_) => AuthCubit()..init(),
    child: const MyApp(),
  ));
}

Future<void> injectDependencias() async {
  getIt.registerLazySingleton(() => FirebaseDataSource());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp());
  getIt.registerLazySingleton<MyUserRepository>(() => MyUserRepositoryImp());
}
