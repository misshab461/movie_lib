import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.grey.shade50,
  ),
  hintColor: Colors.grey.shade800,
  drawerTheme: DrawerThemeData(
    backgroundColor: Colors.grey.shade300,
  ),
  primaryColor: Colors.grey.shade400,
  cardColor: Colors.grey.shade50,
  scaffoldBackgroundColor: Colors.grey.shade50,
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: GoogleFonts.roboto().fontFamily,
    ),
  ),
  iconTheme: const IconThemeData(
    size: 25,
    color: Colors.black,
  ),
);

ThemeData darkTheme = ThemeData(
  cardColor: Colors.grey.shade800,
  primaryColor: Colors.grey.shade900,
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black,
  ),
  hintColor: Colors.grey.shade500,
  scaffoldBackgroundColor: Colors.black,
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    size: 23,
    color: Colors.white,
  ),
);
