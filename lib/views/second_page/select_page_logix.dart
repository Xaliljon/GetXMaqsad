import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SelectPageLogic extends GetxController {


  bool _isLoading = false;



  bool get isLoading => _isLoading;

  final model = new TextEditingController();
  final price = new TextEditingController();

  int state = 0;

  void qurilmalar(BuildContext context) {
    if (state == 1) {
      update();
    } else if (state == 2) {
      update();
    } else if (state == 3) {
      update();
    }
  }

  void sogliq() {
    update();
  }

  void avtomobil() {
    update();
  }

  tasdiqlash() {
   /* Get.off(() => FirstPage(), transition: Transition.rightToLeftWithFade);
    _isLoading = false;
    _visible1 = true;
    Get.back();*/
    update();
  }

/*  startTime() {
    _isLoading = true;
    update();
    var _duration = new Duration(seconds: 2);
    return Timer(_duration, tasdiqlash);
  }*/

  notifqurilma(BuildContext context) {

   /* showBarModalBottomSheet(
        enableDrag: true,
        isDismissible: false,
        backgroundColor: Colors.white,
        context: context,
        // topRadius: Radius.circular(30),
        builder: (builder) => Container(
            height: double.infinity,
            child: GetBuilder<SelectPageLogic>(
              init: SelectPageLogic(),
              builder: (i) => Card(
                child: Column(
                  children: <Widget>[
                    *//*GetBuilder<SelectPageLogic>(
                      init: SelectPageLogic(),
                      builder: (i) => Visibility(
                        visible: _visible1,
                        child: SizedBox(
                          height: 150,
                          child: GetBuilder<SelectPageLogic>(
                            init: SelectPageLogic(),
                            builder: (i) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 2),
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),*//*
                    Text(
                      'Brendni tanlang: ',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(16),
                      onPressed: () => {state = 1, qurilmalar(context)},
                      child: Text(
                        'Samsung',
                        style: TextStyle(
                            color: tcolor,
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                      ),
                      color: color,
                    ),
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(16),
                      onPressed: () => {state = 2, qurilmalar(context)},
                      child: Text(
                        'Apple',
                        style: TextStyle(
                            color: tcolor1,
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                      ),
                      color: color1,
                    ),
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(16),
                      onPressed: () => {state = 3, qurilmalar(context)},
                      child: Text(
                        'Xiaomi',
                        style:
                            TextStyle(color: tcolor2, fontFamily: 'Montserrat'),
                      ),
                      color: color2,
                    ),
                    Text(
                      'Modelni tanlang: ',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),


                    *//*GetBuilder<SelectPageLogic>(
                      init: SelectPageLogic(),
                      builder: (i) => Visibility(
                          visible: _visible,
                          child: SizedBox(
                            height: 150,
                            child: Column(
                              children: <Widget>[
                                CustomButton(
                                    title: 'title',
                                    onPressed: () {
                                      startTime();
                                    },
                                    isLoading: isLoading)
                              ],
                            ),
                          )),
                    )*//*
                  ],
                ),
              ),
            )));*/
    update();
  }


}
