import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(designSize: const Size(375, 812),
    builder:(BuildContext context,Widget?child){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Groceries app',
        theme: ThemeData(
          fontFamily: "Gilroy",
          // primaryColor:Color(0xFF53B175), 
        
        ),
        home:Splashscreen(),
      );
  });
  }
}

