import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/theme/my_themes.dart';
import 'package:getx_app/views/splash_screen/splash_page.dart';
import 'package:getx_app/views/view_first_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
    theme: MyThemes.darkTheme,
  ));
}
