import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/splash_screen/splash_page_logic.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashPageLogic>(
        init: SplashPageLogic(),
        builder: (i) => Scaffold(
              backgroundColor: Color(0xf23d494c),
              body: SafeArea(
                  child: Stack(
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/maqsad_logo.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Copyright © 2021 MAQSAD',
                            textScaleFactor: 1.0,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            )),
                      ))
                ],
              )),
            ));
  }
}
