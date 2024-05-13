import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Acceptedscreen extends StatefulWidget {
  const Acceptedscreen({super.key});

  @override
  State<Acceptedscreen> createState() => _AcceptedscreenState();
}

class _AcceptedscreenState extends State<Acceptedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Center(child: Image.asset('assets/images/Group01.png')),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Your Order has been\n          accepted',
            style: TextStyle(
                color: Colors.black,
                fontFamily: " Gilroy",
                fontWeight: FontWeight.w600,
                fontSize: 28.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Your items has been placcd and is on\n        it’s way to being processed',
            style: TextStyle(
                color: const Color.fromARGB(255, 118, 118, 118),
                fontFamily: " Gilroy",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp),
          ),
            SizedBox(
            height: 120.h,
          ),
            GestureDetector(
            // onTap: () => Navigator.push(context,
            //     MaterialPageRoute(builder: (context) =>Acceptedscreen())),
            child: Container(
              height: 60.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: Color(0xFF53B175)),
              child:Center(
                child: Text(
                        'Track Order',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                      
              ),
            ),
          ),
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text(
                        'Back To Home',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp),
                      ),)
             
        ],
      )),
    );
  }
}
