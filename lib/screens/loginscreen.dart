import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/signupscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
                child: Image.asset(
              'assets/images/carrot2.png',
              height: 50.h,
              width: 50.w,
            )),
            SizedBox(
              height: 80.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Loging',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 28.sp),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Enter your emails and password',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 122, 122, 122),
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, label: Text('Email')),
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
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    border: InputBorder.none,
                    label: Text('Password')),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 103, 102, 102),
                                fontFamily: " Gilroy",
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp),
                          ),
              ),],
            ),
            SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen())),
                child: Container(
                  height: 60.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xFF53B175)),
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.h,),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  
                  children: [Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));}, child: Text(
                      'Signup ',
                      style: TextStyle(
                          color:  Color(0xFF53B175),
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),)],),
              )
          ],
        ),
      )),
    );
  }
}
