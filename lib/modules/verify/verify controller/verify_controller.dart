// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/select%20pool/select_pool_screen.dart';


class VerifyController extends GetxController {
  GlobalKey<FormState> otpkey = GlobalKey<FormState>();
  RxString elapsedTime = '02:00'.obs;
  int _start = 120;
  String result = '';
  List<TextEditingController> otp = [
    TextEditingController(),
     TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  late Timer _timer;
  String formatTime(int secs) {
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

String ? otpvalidator(value){
  if (value.length ==0) {
    return '';
  } else {
    return null;
  }

}

checkOtp(){
  final isValiadtor = otpkey.currentState!.validate();
  if (!isValiadtor) {
    return;
  } else {
    Get.to(()=> SelectPoolScreen());
  }
}
  @override
  void onInit() {
    startTimer();

    super.onInit();
  }

  void otpdigits() {
    for (int i = 0; i < 5; i++) {
      result += otp[i].text;
    }
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start < 1) {
        timer.cancel();
        elapsedTime.value = '00:00';
      } else {
        _start = _start - 1;
        elapsedTime.value = formatTime(_start);
      
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
