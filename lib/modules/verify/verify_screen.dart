// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/verify/verify%20controller/verify_controller.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';
import 'package:envo_munish/widget/otp%20input/otp_input.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);

  final VerifyController _verifyController = Get.put(VerifyController());

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
                  // key: _signUpController.registerKey,
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
                        height: 8.h,
                      ),
                      Text(
                        "Auto Verifying One Time Password that we have sent to you:",
                        style: TextStyle(fontSize: 10.5.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Form(
                        key: _verifyController.otpkey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 6; i++)
                              OtpInput(
                                validator: _verifyController.otpvalidator,
                                controller: _verifyController.otp[i],
                                autoFocus: i == 0 ? true : false,
                              )
                          ],
                        ),
                      ),
                      Obx(() => Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                              children: [
                                Text(
                                  "Resend",
                                  style: TextStyle(
                                      color: appBarColor,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Text(_verifyController.elapsedTime.value,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp
                                ),
                                )
                              ],
                            ),
                      )),
                      SizedBox(
                        height: 6.h,
                      ),
                       InkWell(
                        onTap: (){
                            _verifyController.checkOtp();
                        },
                        child: Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              gradient: themeButtonColor),
                          child: Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(
                        height: 6.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
