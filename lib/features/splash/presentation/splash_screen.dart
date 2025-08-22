import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../components/config/app_const.dart';
import '../../../components/config/app_style.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyle.bluePrimary,
          centerTitle: true,
          elevation: 0,
          // leading: IconButton(
          //   icon: SvgPicture.asset(
          //     AppConst.iconBack,
          //     width: 24,
          //     height: 24,
          //   ),
          //   onPressed: () => Get.back(),
          // ),
          title: Text(
            "Example Screen",
            style: AppStyle.styleBold(size: 20, textColor: Colors.white),
          ),
        ),
        body: Center(
            child: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )));
  }
}
