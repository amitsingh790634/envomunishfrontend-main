import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/verify/verify_screen.dart';


class LoginController extends GetxController {

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
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


  checkLogin(){
    final isValidator = loginKey.currentState!.validate();
    if (!isValidator) {
      return;
    } else {
      Get.to(()=> VerifyScreen());
      
    }
  }

}