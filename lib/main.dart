import 'package:app_suntec/Cubits/auth_cubit.dart';
import 'package:app_suntec/app.dart';
import 'package:app_suntec/repository/auth_repository.dart';
import 'package:app_suntec/repository/implementation/auth_repository.dart';
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
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp());
}
