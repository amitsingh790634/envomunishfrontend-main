// ignore_for_file: unused_field

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/splash/splash%20screen/second%20splash/second_splash_controller.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:lottie/lottie.dart';

class SecondSplashScreen extends StatelessWidget {
   SecondSplashScreen({Key? key}) : super(key: key);

  final SecondsplashController _controller = Get.put(SecondsplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
              Center(
                child: Image.asset("assets/images/logo.png",
                height: 20.h,
                ),
              ),
              Center(
                child: Lottie.asset("assets/images/car.json"),
              )
          ],
        ),
      ),
    );
  }
}
