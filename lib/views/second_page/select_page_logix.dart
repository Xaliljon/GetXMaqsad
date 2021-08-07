import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectPageLogic extends GetxController {
  void qurilmalar() {
    Get.defaultDialog(
        title: "Modelni tanlang",
        content: Container(
          width: 300,
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(20),
            children: [
              CupertinoButton(
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.all(20),
                onPressed: () => {},
                child: Text(
                  'Samsung',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                color: Colors.white,
              ),
              CupertinoButton(
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.all(20),
                onPressed: () => {},
                child: Text(
                  'Apple',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                color: Colors.white,
              ),
              CupertinoButton(
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.all(20),
                onPressed: () => {},
                child: Text(
                  'Xiaomi',
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
        textCancel: 'Orqaga',
        cancelTextColor: Colors.white,
        textConfirm: 'Tanlash',
        confirmTextColor: Colors.white,
        onConfirm: () => {},
        buttonColor: Colors.black);
  }

  void sogliq() {
    Get.snackbar('Hozirda bu xizmat ishga tushirilmadi!',
        '',
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        icon: Icon(
          Icons.error_outline_outlined,
          color: Colors.white,
          size: 36,
        ),
        borderRadius: 20,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
  }

  void avtomobil() {
    Get.snackbar('Hozirda bu xizmat ishga tushirilmadi',
        '',
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        icon: Icon(
          Icons.error_outline_outlined,
          color: Colors.white,
          size: 36,
        ),
        borderRadius: 20,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
  }
}
