import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/second_page/select_page_logix.dart';
import 'package:lottie/lottie.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: CupertinoButton(
                      child: Text('sad'),
                      color: Colors.black,
                      onPressed: () => Get.snackbar('title', 'message'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
