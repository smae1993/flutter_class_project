import 'package:flutter/material.dart';
import 'package:flutter_class_project/constants/theme.dart';
import 'package:flutter_class_project/views/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  // GetStorage().erase();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: theme,
    locale: Locale("fa"),
  ));
}
