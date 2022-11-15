// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:envo_munish/essitnails/essentail_files.dart';
import 'package:envo_munish/modules/home/create%20ride/create_ride_screen.dart';
import 'package:envo_munish/modules/home/select%20pool/select%20pool%20model/select_pool_model.dart';
import 'package:envo_munish/widget/app%20color/app_colors.dart';

class SelectPoolScreen extends StatelessWidget {
  SelectPoolScreen({Key? key}) : super(key: key);

  List<SelectPoolModel> options = [
    SelectPoolModel(
        img:
            "https://i.insider.com/5d9cb3be4b65074f771ed236?width=1136&format=jpeg",
        role: "Ride taker"),
    SelectPoolModel(
        img:
            "https://i.insider.com/55cbed0769bedd17108b9520?width=1000&format=jpeg&auto=webp",
        role: "Ride Giver")
  ];

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
                    Text(
                      "Select Your Carpooling Role",
                      style: TextStyle(
                        // fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text("You can Change It Any Time"),
                    SizedBox(
                      height: 5.h,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.to(()=> CreateRideScreen());
                                },
                                child: Container(
                                  height: 15.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 0.2.w),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft: Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    options[index].img))),
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(options[index].role,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp
                                          ),
                                          ),
                                          options[index].role == 'Ride taker' ? Text("Looking For Ride") : Text("Share Seats")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                             
                            ],
                          );
                        }),
                         SizedBox(
                                height: 46.h,
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
