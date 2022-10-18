import 'package:app_suntec/ui/widget/intro_pager.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Bienvenido'),
        // ),
        body: const IntroPager());
  }
}
