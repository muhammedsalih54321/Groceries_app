import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/components/signinbuttons.dart';
import 'package:online_groceries/screens/numberenteringscree.dart';

class Sighinscreen extends StatefulWidget {
  const Sighinscreen({super.key});

  @override
  State<Sighinscreen> createState() => _SighinscreenState();
}

class _SighinscreenState extends State<Sighinscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Image.asset('assets/images/601 1.png'),
      SizedBox(
        height: 50.h,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text(
              'Get your groceries\nwith nectar',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: " Gilroy",
                  fontWeight: FontWeight.w500,
                  fontSize: 26.sp),
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
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Numberenterscreen())),
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
        height: 30.h,
      ),
      Text(
        'Or connect with social media',
        style: TextStyle(
            color: Colors.grey,
            fontFamily: " Gilroy",
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
      ),
      SizedBox(
        height: 30.h,
      ),
      Signinbutton(
          color: Color(0xFF5383EC),
          img: 'assets/images/google icon.png',
          text: 'Continue with Google'),
      SizedBox(
        height: 15.h,
      ),
      Signinbutton(
          color: Color(0xFF4A66AC),
          img: 'assets/images/facebook  icon.png',
          text: 'Continue with Facebook')
    ]));
  }
}
