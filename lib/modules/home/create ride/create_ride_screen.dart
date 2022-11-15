// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/create%20ride/create%20ride%20controller/create_ride_controller.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';

import 'package:intl/intl.dart';

class CreateRideScreen extends StatelessWidget {
  CreateRideScreen({Key? key}) : super(key: key);

 final CreateRideController _rideController = Get.put(CreateRideController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: PhysicalModel(
            elevation: 10,
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 1.3.h,
              ),
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Let's Create Your Ride",
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text("Your Address are Kept Confidential"),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Icon(
                          Icons.timelapse_sharp,
                          size: 2.8.h,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Obx(() => Text(
                          DateFormat.jm().format(_rideController.now.value),
                          style: TextStyle(
                              fontSize: 13.sp,
                              decoration: TextDecoration.underline),
                        )),
                    SizedBox(
                      height: 4.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "set home location",
                        suffixIcon: Icon(Icons.gps_fixed)
                      ),
                    ),
                    SizedBox(
                      height: 2.h
                    ),
                     TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: "set office location",
                        suffixIcon: Icon(Icons.gps_fixed)
                      ),
                    ),

                    SizedBox(
                      height: 40.h,
                    ),
                  Container(
                          height: 6.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              gradient: themeButtonColor),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                     SizedBox(
                       height: 6.h,
                     )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
