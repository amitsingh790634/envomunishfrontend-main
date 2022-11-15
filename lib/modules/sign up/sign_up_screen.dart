// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/sign%20up/signup%20controller/signup_controller.dart';
import 'package:envo_munish/widget/TextFields/textFields.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({ Key? key }) : super(key: key);

  final SignUpController _signUpController = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.blueGrey)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Form(
                  key: _signUpController.registerKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child: Image.asset(
                        "assets/images/logo.png",
                        height: 13.h,
                      )),
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: PhysicalModel(
                          color: Colors.blueGrey,
                          elevation: 3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          child: Container(
                            height: 4.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                border: Border.all(
                                    color: appBarColor, width: 0.3.w)),
                            child: Center(
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: appBarColor, fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Login using mobile number",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      Textfields(
                          controller: _signUpController.mobile,
                          validator: _signUpController.mobileValidator,
                          label: "Enter mobile number"),
                      SizedBox(
                        height: 1.6.h,
                      ),
                      InkWell(
                        onTap: (){
                              
                              _signUpController.checkRegister();
                        },
                        child: Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              gradient: themeButtonColor),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Already registered with us?",
                              style: TextStyle(fontSize: 12.sp)),
                          TextSpan(
                              text: " LOGIN",
                              style: TextStyle(
                                  fontSize: 12.sp, color: appBarColor)),
                        ])),
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 13.sp, color: Colors.grey[700]),
            ),
            SizedBox(
              height: 1.3.h,
            ),
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 13.sp, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
               
                Spacer(),
                Image.network(
                  "https://image.similarpng.com/very-thumbnail/2020/12/Flat-design-Google-logo-design-Vector-PNG.png",
                  height: 7.h,
                ),
                Spacer(),
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/800px-2021_Facebook_icon.svg.png",
                  height: 7.h,
                ),
                Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
