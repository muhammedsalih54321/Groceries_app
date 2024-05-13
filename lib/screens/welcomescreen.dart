import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/sighinscreen.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img1.jpeg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 400.h,
              ),
              Image.asset(
                'assets/images/carrot.png',
                height: 50.h,
                width: 50.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '  Welcome\nto our store',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 45.sp),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w300,
                        fontSize: 14.sp),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sighinscreen())),
                child: Container(
                  height: 57.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xFF53B175)),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
