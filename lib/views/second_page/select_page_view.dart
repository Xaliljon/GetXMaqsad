import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                      CupertinoButton(
                        child: Text(
                          "Telefon qurilmalari",
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                        color: Colors.blue,
                        onPressed: () => {logic.qurilmalar()},
                        borderRadius: BorderRadius.circular(100),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: CupertinoButton(
                          child: Text(
                            "Sog'liq",
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                          color: Colors.blue,
                          onPressed: () => {},
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: CupertinoButton(
                          child: Text(
                            "Avtomobil",
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                          color: Colors.blue,
                          onPressed: () => {},
                          borderRadius: BorderRadius.circular(100),
                        ),
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
