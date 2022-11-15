// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:envo_munish/modules/splash/second_splas_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    Timer(Duration(seconds: 2), (){
      Get.offAll(()=> SecondSplashScreen());
    });
    super.onInit();
  }

}