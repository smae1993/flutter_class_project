import 'package:flutter/material.dart';
import 'package:flutter_class_project/constants/theme.dart';
import 'package:flutter_class_project/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: theme,
    locale: Locale("fa"),
  ));
}
