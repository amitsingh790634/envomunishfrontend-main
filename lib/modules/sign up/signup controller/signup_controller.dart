import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/login/login_screen.dart';


class SignUpController extends GetxController {

  GlobalKey<FormState> registerKey = GlobalKey<FormState>();

  TextEditingController mobile = TextEditingController();
  String ? mobileValidator(value){
    if (value == '') {
      return 'Please enter your Mobile number';
      
    }
    else if(value.length != 10){
      return 'Please enter 10 digit Mobile number';
    }
    else{
      return null;
    }
  }


  checkRegister(){
    final isValidator = registerKey.currentState!.validate();
    if (!isValidator) {
      return;
    } else {
      Get.offAll(()=> LoginScreen());
      
    }
  }

}