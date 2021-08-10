import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/widgets/service_card.dart';
import 'package:getx_app/views/second_page/select_page_logix.dart';
import 'package:getx_app/views/second_page/select_page_widgets.dart';
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
          child: Stack(
            children: [
              SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: GetBuilder<SelectPageLogic>(
                    init: SelectPageLogic(),
                    builder: (i) => AnimationLimiter(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: AnimationConfiguration.toStaggeredList(
                              duration: const Duration(seconds: 2),
                              childAnimationBuilder: (widget) => SlideAnimation(
                                  verticalOffset: 50,
                                  child: FadeInAnimation(
                                    child: widget,
                                  )),
                              children: [
                                Lottie.asset('assets/goal_not.json',
                                    animate: true, repeat: false),
                                getServicesColumn(context),
                                /* CustomButton(
                                          title: 'Telefon qurilmalari',
                                          onPressed: (){},
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
                                        ),*/
                              ])),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget getServicesColumn(BuildContext context) {
    return CustomGridView(
      childTopLeft: CardService(
        icon: 'assets/iphone.png',
        text: 'Telefon qurilmalari',
        onTap: () {
          logic.notifqurilma();
        },
      ),
      childTopRight: CardService(
        icon: 'assets/sogliq.png',
        text: "Sog'liq",
        onTap: () {
          AchievementView(
            context,
            title: 'Ushbu funksiya ishlab chiqish jarayonida',
            textStyleTitle: TextStyle(fontSize: 16),
            subTitle: '',
            borderRadius: 30,
            color: Colors.blueGrey,
            icon: Icon(
              Icons.error_outline_outlined,
              size: 36,
              color: Colors.white,
            ),
          )..show();
        },
      ),
      childBottomLeft: CardService(
        icon: "assets/car.png",
        text: 'Avtomobil',
        onTap: () {
          AchievementView(
            context,
            title: 'Ushbu funksiya ishlab chiqish jarayonida',
            textStyleTitle: TextStyle(fontSize: 16),
            subTitle: '',
            borderRadius: 30,
            color: Colors.blueGrey,
            icon: Icon(
              Icons.error_outline_outlined,
              size: 36,
              color: Colors.white,
            ),
          )..show();
        },
      ),
      childBottomRight: CardService(
        icon: "assets/koran.png",
        text: 'Diniy',
        onTap: () {
          AchievementView(
            context,
            title: 'Ushbu funksiya ishlab chiqish jarayonida',
            textStyleTitle: TextStyle(fontSize: 16),
            subTitle: '',
            borderRadius: 30,
            color: Colors.blueGrey,
            icon: Icon(
              Icons.error_outline_outlined,
              size: 36,
              color: Colors.white,
            ),
          )..show();
        },
      ),
    );
  }

  void show() {}
}
