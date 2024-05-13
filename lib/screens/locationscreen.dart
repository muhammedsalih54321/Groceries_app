import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/loginscreen.dart';

class Locationscreen extends StatefulWidget {
  const Locationscreen({super.key});

  @override
  State<Locationscreen> createState() => _LocationscreenState();
}

class _LocationscreenState extends State<Locationscreen> {
  String choosevalue = 'one';

  List zonenames = [
    'Banasree',
    'Kottakkal',
    'Chenkuvetti',
    'Venniyoor',
    'Kakkad',
    'Chemmad'
  ];

  List areanames = [
    'Pokkiparambu',
    'Thazhepalam',
    'Chenkuvetti',
    'Venniyoor',
    'Kakkad',
    'parappanagadi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
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
      Image.asset(
        'assets/images/illustration.png',
        height: 230.h,
        width: 230.w,
      ),
      SizedBox(
        height: 5.h,
      ),
      Text(
        'Select Your Location',
        style: TextStyle(
            color: Colors.black,
            fontFamily: " Gilroy",
            fontWeight: FontWeight.w500,
            fontSize: 25.sp),
      ),
      SizedBox(
        height: 5.h,
      ),
      Text(
        'Swithch on your location to stay in tune with\n           what’s happening in your area',
        style: TextStyle(
            color: Colors.grey,
            fontFamily: " Gilroy",
            fontWeight: FontWeight.w500,
            fontSize: 15.sp),
      ),
      SizedBox(
        height: 70.h,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text(
              'Your Zone',
              style: TextStyle(
                  color: const Color.fromARGB(255, 111, 109, 109),
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
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select your zone',
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 211, 207, 207),
                      fontSize: 15.sp),
                  border: InputBorder.none,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.keyboard_arrow_down_outlined),
              )
            ],
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
        height: 10.h,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Text(
              'Your Area',
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
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select your area',
                  hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 211, 207, 207),
                      fontSize: 15.sp),
                  border: InputBorder.none,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.keyboard_arrow_down_outlined),
              )
            ],
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
                height: 30.h,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>Loginscreen())),
                child: Container(
                  height: 60.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xFF53B175)),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
              )
      

    ]))));
  }
}
