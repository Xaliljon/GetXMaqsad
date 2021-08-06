import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
        builder: (i) => Padding(
          padding: const EdgeInsets.all(30.0),
          child: Stack(children: <Widget>[
            ListView(
              children: [
                Lottie.asset('assets/lote_person.json',
                    repeat: c.lotianim, reverse: false, animate: c.lotianim),
                /*ElevatedButton(
                    child: Text("Boshqa bo'limga kirish"),
                    onPressed: () => Get.to(Other())),*/
                TextFormField(
                  controller: c.textMaqsad,
                  decoration: InputDecoration(
                      labelText: 'Maqsadni kiriting:  So\'mda',
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                      contentPadding: EdgeInsets.all(20.0)),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(9)
                  ],
                  keyboardType: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: ElevatedButton(
                    child: Text("Kiritish"),
                    onPressed: c.pressbutton
                        ? () {
                            c.animCheck();
                          }
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: ElevatedButton(
                    onPressed: c.pressbutton1
                        ? () {
                            c.dicrement();
                          }
                        : null,
                    child: Text('Bekor'),
                  ),
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}

class Other extends StatelessWidget {
  // "Попросите" Get найти и предоставить вам ваш Controller, используемый на другой странице.
  final MainLogic c = Get.find();

  @override
  Widget build(context) {
    // Получите доступ к обновленной переменной count
    return Scaffold(body: Center(child: Text("Sizning maqsadingiz => ${c.s}")));
  }
}
