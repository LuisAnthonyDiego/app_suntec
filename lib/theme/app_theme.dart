import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      // AppBar Theme
      appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,
      // AppBar Theme
      appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0));
}

const sDefaultPadding = 20.0;
const sDefaultShadow =
    BoxShadow(offset: Offset(0, 15), blurRadius: 27.0, color: Colors.black12);
