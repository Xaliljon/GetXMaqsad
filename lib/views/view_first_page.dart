import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/custom/custom_button/custom_button.dart';
import 'package:getx_app/views/logic_first_page.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(context) {
    final MainLogic c = Get.put(MainLogic());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("MAQSAD"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GetBuilder<MainLogic>(
          init: MainLogic(),
          builder: (i) => Stack(children: <Widget>[
            ListView(
              children: [
                Lottie.asset('assets/goalssuc.json',
                    repeat: true, reverse: false, animate: true),
                Text(
                  'Maqsadni aniqlab oldik!\n Keling endi tanishamiz :)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      child: TextFormField(
                        controller: c.textMaqsad,
                        decoration: InputDecoration(
                            labelText: 'Ismingizni kiriting: ',
                            fillColor: Colors.black,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            ),
                            contentPadding: EdgeInsets.all(20.0)),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    CustomButton(
                      title: "Kiritish",
                      isLoading: false,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
