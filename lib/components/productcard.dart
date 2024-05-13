
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/bevaragescreen.dart';

class Productcard extends StatelessWidget {
  const Productcard({super.key, required this.img, required this.name, required this.color, required this.brcolor});

  final String img;
  final String name;
  final Color brcolor;
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Bevaragescreen())),
      child: Container(
                    height: 180.h,
                    width: 158.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(15.r),
                        border: Border.all(
                          color:color,
                        ),
                        color: brcolor),
                        child: Column(children: [
                          SizedBox(height: 4.h,),
                          Image.asset(img,height: 110.h,width: 110.w,)
                        ,SizedBox(height: 5.h,),Text(
                          name,
                          style: TextStyle(
                              color:Colors.black,
                              fontFamily: " Gilroy",
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                        )
                        
                        ],),
                  ),
    );
  }
}