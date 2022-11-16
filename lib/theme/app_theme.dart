import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Colors.redAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.redAccent,
      // AppBar Theme
      appBarTheme: const AppBarTheme(color: Colors.redAccent, elevation: 0));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.redAccent,
      // AppBar Theme
      appBarTheme: const AppBarTheme(color: Colors.redAccent, elevation: 0));
}

const sDefaultPadding = 20.0;
const sDefaultShadow =
    BoxShadow(offset: Offset(0, 15), blurRadius: 27.0, color: Colors.black12);

//Fonts General AppTheme
final fontsTitle = GoogleFonts.poppins(color: Colors.white);
final fontsCategory = GoogleFonts.poppins(color: Colors.white);

//Fonts Card
final fontsTitleCard = GoogleFonts.comfortaa(color: Colors.black);
final fontsCardDescription = GoogleFonts.poppins(color: Colors.white);
final fontsPrice = GoogleFonts.secularOne(
    color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600);

//Fonts Description
final fontsDetailsDescription = GoogleFonts.varelaRound(color: Colors.white);

//CLIENTE UI FONTS

final fontsTitleC = GoogleFonts.poppins(color: Colors.white, fontSize: 45);

//Fonts Item_tile

final fontsTileT = GoogleFonts.aclonica(
  fontSize: 20.0,
);
final fontsTileST = GoogleFonts.aclonica(color: Colors.white54);
