import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accountscreen extends StatefulWidget {
  const Accountscreen({super.key});

  @override
  State<Accountscreen> createState() => _AccountscreenState();
}

class _AccountscreenState extends State<Accountscreen> {
  List img = [
    'assets/images/img32.png',
    'assets/images/img33.png',
    'assets/images/img34.png',
    'assets/images/img35.png',
    'assets/images/img36.png',
    'assets/images/img37.png',
    'assets/images/img38.png',
    'assets/images/img39.png',
  ];
  List name = [
    'Orders',
    'My Details',
    'Delivery Address',
    'Payment Methods',
    'Promo Code',
    'Notifecations',
    'Help',
    'About'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                height: 75.h,
                width: 55.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img30.jpeg'),
                        fit: BoxFit.cover)),
              ),
              title: Row(
                children: [
                  Text(
                    'Afsar Hossen',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.green,
                    size: 20.sp,
                  )
                ],
              ),
              subtitle: Text(
                'Imshuvo97@gmail.com',
                style: TextStyle(
                    color: Color.fromARGB(255, 100, 99, 99),
                    fontFamily: " Gilroy",
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Divider(
            height: 1.h,
            thickness: .3,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 45.h,
                    child: ListTile(
                      leading: Image.asset(img[index],height: 26.h,width: 26.w,),
                      title:  Text(
                      name[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black,),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: .3,
                    color: Colors.grey,
                  );
                },
                itemCount: name.length),
          ),
           Divider(
            height: 1.h,
            thickness: .3,
            color: Colors.grey,
          ),
          SizedBox(height: 50.h,),
           Container(
              height: 60.h,
              width: 340.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color.fromARGB(64, 197, 194, 194)),
              child: Row(
                children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.logout_outlined,color:Color(0xFF53B175) ,),
                  ),
                          SizedBox(
                    width: 55.w,
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Log Out ',
                      style: TextStyle(
                          color:Color(0xFF53B175),
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp),
                    ),
                  ),
                  
                ],
              ),
            ),
         SizedBox(height: 15.h,) 
        ],
      )),
    );
  }
}
