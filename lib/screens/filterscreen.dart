import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  bool first = false;
  bool second = false;
  bool third = false;
  bool forth = false;
  bool fifth = false;
  bool sixth = false;
  bool seventh = false;
  bool eigth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                )),
            title: Text(
              'Filters',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: " Gilroy",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 699.4.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(64, 177, 175, 175),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r))),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w500,
                            fontSize: 23.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: first,
                        onChanged: (firstvalue) {
                          setState(() {
                            first = firstvalue!;
                          });
                        },
                      ),
                      Text(
                        'Eggs',
                        style: TextStyle(
                            color:
                                first == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: second,
                        onChanged: (secondvalue) {
                          setState(() {
                            second = secondvalue!;
                          });
                        },
                      ),
                      Text(
                        'Noodles & pasta',
                        style: TextStyle(
                            color:
                                second == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: third,
                        onChanged: (thirdvalue) {
                          setState(() {
                            third = thirdvalue!;
                          });
                        },
                      ),
                      Text(
                        'Chips & Crisps',
                        style: TextStyle(
                            color:
                                third == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: forth,
                        onChanged: (forthvalue) {
                          setState(() {
                            forth = forthvalue!;
                          });
                        },
                      ),
                      Text(
                        'Fast Food',
                        style: TextStyle(
                            color:
                                forth == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
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
                        'Brand',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w500,
                            fontSize: 23.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: fifth,
                        onChanged: (fifthvalue) {
                          setState(() {
                            fifth = fifthvalue!;
                          });
                        },
                      ),
                      Text(
                        'Individual Callection',
                        style: TextStyle(
                            color:
                                fifth == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: sixth,
                        onChanged: (sixthvalue) {
                          setState(() {
                            sixth = sixthvalue!;
                          });
                        },
                      ),
                      Text(
                        'Cocold',
                        style: TextStyle(
                            color:
                                sixth == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: seventh,
                        onChanged: (seventhvalue) {
                          setState(() {
                            seventh = seventhvalue!;
                          });
                        },
                      ),
                      Text(
                        'Ifad',
                        style: TextStyle(
                            color:
                                seventh == false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                       
                        activeColor: Color(0xFF53B175) ,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                        value: eigth,
                        onChanged: (eigthvalue) {
                          setState(() {
                            eigth = eigthvalue!;
                          });
                        },
                      ),
                      Text(
                        'Kazi farmas',
                        style: TextStyle(
                            color:
                                eigth== false ? Colors.black : Color(0xFF53B175),
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
