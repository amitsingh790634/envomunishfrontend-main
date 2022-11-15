// ignore_for_file: unused_field

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/splash/splash%20controller/splash_controller.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({ Key? key }) : super(key: key);

  final SplashController _splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(child: Center(
        child: Image.asset("assets/images/logo.png",
        height: 20.h,
        ),
      )),
      
    );
  }
}