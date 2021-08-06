import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/second_page/select_page_view.dart';
import 'package:getx_app/views/view_first_page.dart';

class SplashPageLogic extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    startTime();
    super.onInit();
  }

  startTime() {
    var _duration = new Duration(seconds: 2);
    return Timer(_duration, initialPage);
  }

  void initialPage() {
    Get.off(() => SelectPage(),transition: Transition.rightToLeftWithFade);
  }
}
