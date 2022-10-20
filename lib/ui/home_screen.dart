import 'package:app_suntec/cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        actions: [
          IconButton(
              onPressed: () {
                final authCubit = context.read<AuthCubit>();
                authCubit.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HomaScreen'),
            ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                },
                child: const Text('SignOut'))
          ],
        ),
      ),
    );
  }
}
