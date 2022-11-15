// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:envo_munish/modules/login/login_screen.dart';
import 'package:get/get.dart';

class SecondsplashController extends GetxController {

  @override
  void onInit() {
    Timer(Duration(seconds: 2), (){
      Get.offAll(()=> LoginScreen());
    });
    super.onInit();
  }

}