import 'package:app_suntec/cubits/auth_cubit.dart';
import 'package:app_suntec/theme/app_theme.dart';
import 'package:app_suntec/ui/widget/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SunTec',
          style: fontsTitle,
        ),
        actions: [
          IconButton(
              onPressed: () {
                final authCubit = context.read<AuthCubit>();
                authCubit.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const HomeBody(),
    );
  }
}
