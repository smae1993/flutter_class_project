import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  fontFamily: "IranYekan",
  // colorScheme: ColorScheme.dark(
  //   primary: Colors.red,
  // ),
  // appBarTheme: AppBarTheme(backgroundColor: Colors.red),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color(0x7BFFFFFF),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12.0),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(12.0),
    ),
  ),
);

ButtonStyle errorButtonStyle =
    ElevatedButton.styleFrom(foregroundColor: Colors.red);

ThemeData userSectionTheme =
    ThemeData(colorScheme: ColorScheme.light(primary: Colors.cyan));
