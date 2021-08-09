import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/custom/custom_button/custom_button.dart';
import 'package:getx_app/utils/uppercase.dart';
import 'package:getx_app/views/second_page/select_page_logix.dart';
import 'package:lottie/lottie.dart';

class SelectPage extends StatelessWidget {
  final SelectPageLogic logic = Get.put(SelectPageLogic());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectPageLogic>(
      init: SelectPageLogic(),
      builder: (i) => Scaffold(
        appBar: AppBar(
          title: Text("MAQSAD"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: GetBuilder<SelectPageLogic>(
          init: SelectPageLogic(),
          builder: (i) => Padding(
            padding: const EdgeInsets.all(1),
            child: Stack(
              children: <Widget>[
                ListView(
                  children: [
                    Lottie.asset('assets/goal_not.json',
                        animate: true, repeat: true),
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        title: 'Telefon qurilmalari',
                        onPressed: () => Get.defaultDialog(
                            barrierDismissible: false,
                            title: "Brend tanlang",
                            content: AnimatedContainer(
                              width: 300,
                              height: 100,
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceInOut,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  GetBuilder<SelectPageLogic>(
                                    init: SelectPageLogic(),
                                    builder: (i) => CupertinoButton(
                                      borderRadius: BorderRadius.circular(16),
                                      onPressed: () =>
                                          {logic.state = 1, logic.qurilmalar()},
                                      child: Text(
                                        'Samsung',
                                        style: TextStyle(
                                            color: logic.tcolor,
                                            fontSize: 16,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      color: logic.color,
                                    ),
                                  ),
                                  GetBuilder<SelectPageLogic>(
                                    init: SelectPageLogic(),
                                    builder: (i) => CupertinoButton(
                                      borderRadius: BorderRadius.circular(16),
                                      onPressed: () =>
                                          {logic.state = 2, logic.qurilmalar()},
                                      child: Text(
                                        'Apple',
                                        style: TextStyle(
                                            color: logic.tcolor1,
                                            fontSize: 16,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      color: logic.color1,
                                    ),
                                  ),
                                  GetBuilder<SelectPageLogic>(
                                    init: SelectPageLogic(),
                                    builder: (i) => CupertinoButton(
                                      borderRadius: BorderRadius.circular(16),
                                      onPressed: () =>
                                          {logic.state = 3, logic.qurilmalar()},
                                      child: Text(
                                        'Xiaomi',
                                        style: TextStyle(
                                            color: logic.tcolor2,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      color: logic.color2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            textCancel: 'Orqaga',

                            textConfirm: 'Tanlash',
                            onConfirm: () => {
                                  if (logic.state == 1)
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
                                                  controller: logic.model,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'Misol: S9,S9+,Note 10, Note 10+',
                                                      fillColor: Colors.black,
                                                      border:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .black,
                                                                width: 2.0),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    25.0)),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsets.all(20.0)),
                                                  keyboardType:
                                                      TextInputType.name,
                                                  inputFormatters: [
                                                    UpperCaseTextFormatter()
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child:
                                                    GetBuilder<SelectPageLogic>(
                                                  init: SelectPageLogic(),
                                                  builder: (i) => TextFormField(
                                                    controller: logic.price,
                                                    decoration: InputDecoration(
                                                        labelText:
                                                            "Narxi: ${logic.price.text} so\'m ",
                                                        fillColor: Colors.black,
                                                        border:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 2.0),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          25.0)),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets.all(
                                                                20.0)),
                                                    keyboardType:
                                                        TextInputType.number,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        textConfirm: 'Tasdiqlash',
                                        textCancel: 'Bekor qilish',
                                        onConfirm: () =>
                                            {Get.back(), logic.startTime()},
                                        barrierDismissible: false,
                                        onCancel: () => {},
                                      )
                                    }
                                },
                            buttonColor: Color(0xff1171FF)),
                        isLoading: logic.isLoading,
                      ),
                      CustomButton(
                        title: 'Sog\'liq',
                        onPressed: () => {logic.sogliq()},
                        isLoading: false,
                      ),
                      CustomButton(
                        title: 'Avtomobil',
                        onPressed: () => {logic.avtomobil()},
                        isLoading: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
