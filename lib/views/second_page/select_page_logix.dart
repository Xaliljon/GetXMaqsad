import 'dart:async';

import 'package:achievement_view/achievement_view.dart';
import 'package:achievement_view/achievement_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/utils/uppercase.dart';
import 'package:getx_app/views/view_first_page.dart';

class SelectPageLogic extends GetxController {
  var color = Colors.white;
  var color1 = Colors.white;
  var color2 = Colors.white;
  var tcolor = Colors.black;
  var tcolor1 = Colors.black;
  var tcolor2 = Colors.black;

  bool _isLoading = false;

  late BuildContext ctxt;

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

  notifqurilma() {
    Get.defaultDialog(
        barrierDismissible: false,
        title: "Brend tanlang",
        content: Container(
          width: 300,
          height: 100,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              GetBuilder<SelectPageLogic>(
                init: SelectPageLogic(),
                builder: (i) => CupertinoButton(
                  borderRadius: BorderRadius.circular(16),
                  onPressed: () => {state = 1, qurilmalar()},
                  child: Text(
                    'Samsung',
                    style: TextStyle(
                        color: tcolor, fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                  color: color,
                ),
              ),
              GetBuilder<SelectPageLogic>(
                init: SelectPageLogic(),
                builder: (i) => CupertinoButton(
                  borderRadius: BorderRadius.circular(16),
                  onPressed: () => {state = 2, qurilmalar()},
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        color: tcolor1, fontSize: 16, fontFamily: 'Montserrat'),
                  ),
                  color: color1,
                ),
              ),
              GetBuilder<SelectPageLogic>(
                init: SelectPageLogic(),
                builder: (i) => CupertinoButton(
                  borderRadius: BorderRadius.circular(16),
                  onPressed: () => {state = 3, qurilmalar()},
                  child: Text(
                    'Xiaomi',
                    style: TextStyle(color: tcolor2, fontFamily: 'Montserrat'),
                  ),
                  color: color2,
                ),
              ),
            ],
          ),
        ),
        textCancel: 'Orqaga',
        textConfirm: 'Tanlash',
        onConfirm: () => {
              if (state == 1)
                {
                  Get.back(),
                  Get.defaultDialog(
                    title: 'Modelni kiriting',
                    content: AnimatedContainer(
                      width: 300,
                      height: 130,
                      duration: Duration(seconds: 2),
                      curve: Curves.bounceInOut,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          GetBuilder<SelectPageLogic>(
                            init: SelectPageLogic(),
                            builder: (i) => TextFormField(
                              controller: model,
                              decoration: InputDecoration(
                                  labelText: 'Misol: S9,S9+,Note 10, Note 10+',
                                  fillColor: Colors.black,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 2.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25.0)),
                                  ),
                                  contentPadding: EdgeInsets.all(20.0)),
                              keyboardType: TextInputType.name,
                              inputFormatters: [UpperCaseTextFormatter()],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: GetBuilder<SelectPageLogic>(
                              init: SelectPageLogic(),
                              builder: (i) => TextFormField(
                                controller: price,
                                decoration: InputDecoration(
                                    labelText: "Narxi: ${price.text} so\'m ",
                                    fillColor: Colors.black,
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 2.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.0)),
                                    ),
                                    contentPadding: EdgeInsets.all(20.0)),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    textConfirm: 'Tasdiqlash',
                    textCancel: 'Bekor qilish',
                    onConfirm: () => {Get.back(), startTime()},
                    barrierDismissible: false,
                    onCancel: () => {},
                  )
                }
            },
        buttonColor: Color(0xff1171FF));
  }
}
