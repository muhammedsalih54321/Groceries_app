import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signinbutton extends StatelessWidget {
  const Signinbutton({super.key, required this.color, required this.img, required this.text});
  final Color color;
  final String img;
  final String text;




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(height: 60.h,width: 330.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),color:color),
               child: Row(children: [
                SizedBox(width: 30.w,),
                Image.asset(img,height: 28.h,width: 28.w,),
                SizedBox(width: 30.w,),
                 Text(
                     text,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
               ],),
                ),
                
    );
  }
}