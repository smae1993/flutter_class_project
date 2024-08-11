import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  fontFamily: "IranYekan",
  // colorScheme: ColorScheme.dark(
  //   primary: Colors.red,
  // ),
  // appBarTheme: AppBarTheme(backgroundColor: Colors.red),
);

ButtonStyle errorButtonStyle =
    ElevatedButton.styleFrom(foregroundColor: Colors.red);

ThemeData userSectionTheme =
    ThemeData(colorScheme: ColorScheme.light(primary: Colors.cyan));
