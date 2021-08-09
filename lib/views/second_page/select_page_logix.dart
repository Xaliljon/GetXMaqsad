import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/view_first_page.dart';

class SelectPageLogic extends GetxController {
  var color = Colors.white;
  var color1 = Colors.white;
  var color2 = Colors.white;
  var tcolor = Colors.black;
  var tcolor1 = Colors.black;
  var tcolor2 = Colors.black;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  final model = new TextEditingController();
  final price = new TextEditingController();

  int state = 0;

  void qurilmalar() {
    if (state == 1) {
      tcolor = Colors.white;
      color = Color(0xff1171FF);

      color1 = Colors.white;
      color2 = Colors.white;
      tcolor1 = Colors.black;
      tcolor2 = Colors.black;
      update();
    } else if (state == 2) {
      tcolor = Colors.black;
      tcolor2 = Colors.black;
      color = Colors.white;
      color2 = Colors.white;

      tcolor1 = Colors.white;
      color1 = Color(0xff1171FF);
      update();
    } else if (state == 3) {
      tcolor2 = Colors.white;
      color2 = Color(0xff1171FF);

      color = Colors.white;
      color1 = Colors.white;
      tcolor = Colors.black;
      tcolor1 = Colors.black;

      update();
    }
  }

  void sogliq() {
    Get.snackbar('Hozirda bu xizmat ishga tushirilmadi!', '',
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        icon: Icon(
          Icons.error_outline_outlined,
          color: Colors.white,
          size: 36,
        ),
        borderRadius: 20,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
    update();
  }

  void avtomobil() {
    Get.snackbar('Hozirda bu xizmat ishga tushirilmadi', '',
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        icon: Icon(
          Icons.error_outline_outlined,
          color: Colors.white,
          size: 36,
        ),
        borderRadius: 20,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
    update();
  }

  tasdiqlash() {
    Get.offAll(() => FirstPage(), transition: Transition.cupertino);
    _isLoading = false;
    update();
  }

  startTime() {
    _isLoading = true;
    update();
    var _duration = new Duration(seconds: 2);
    return Timer(_duration, tasdiqlash);
  }
}
