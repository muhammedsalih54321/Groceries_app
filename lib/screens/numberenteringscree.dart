import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/otpscreen.dart';

class Numberenterscreen extends StatefulWidget {
  const Numberenterscreen({super.key});

  @override
  State<Numberenterscreen> createState() => _NumberenterscreenState();
}

class _NumberenterscreenState extends State<Numberenterscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Enter your mobile number',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/img3.png',
                          height: 33.h,
                          width: 33.w,
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '+880',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: " Gilroy",
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                            child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 20),
                child: Divider(
                  thickness: .5,
                  color: const Color.fromARGB(255, 160, 158, 158),
                ),
              ),
              SizedBox(
                height: 400.h,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20),
              //       child: GestureDetector(
              //         onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreen())),
              //         child: CircleAvatar(
              //           radius: 35,
              //           backgroundColor: Color(0xFF53B175),
              //           child: Icon(
              //             Icons.arrow_forward_ios,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Otpscreen())),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xFF53B175),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
