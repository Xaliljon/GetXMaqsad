import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainLogic extends GetxController {
  final TextEditingController textMaqsad = TextEditingController();

  bool lotianim = false;
  bool pressbutton = true;
  bool pressbutton1 = true;
  int s = 0;

  var count = 0.obs;

  void animCheck() {
    s = int.parse(textMaqsad.text);
    count++;
    if (s >= 2999) {
      lotianim = true;
      pressbutton = false;
      pressbutton1 = true;
      print(lotianim);
      update();
    }
  }

  void dicrement() {
    count--;
    if (count < 10) {
      lotianim = false;
      pressbutton = true;
      pressbutton1 = false;
      print(lotianim);
      update();
    }
  }
}
