import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/locationscreen.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
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
                    'Enter your 4-digit code',
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
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Code',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 23),
                child: GestureDetector(
                  child: Row(
                    children: [
                    
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: '_ _ _ _',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 20.sp),
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
                thickness: .3,
                color: const Color.fromARGB(255, 160, 158, 158),
              ),
            ),
            SizedBox(
              height: 400.h,
            ),
            
            
          ],
        ),
      )),
       floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
             Padding(
               padding: const EdgeInsets.only(left: 40),
               child: Text(
                      'Resend Code',
                      style: TextStyle(
                          color: Color(0xFF53B175),
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
             ),

            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Locationscreen())),
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
        )
    );
  }
}
