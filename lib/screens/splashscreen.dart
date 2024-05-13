import 'package:flutter/material.dart';
import 'package:online_groceries/screens/welcomescreen.dart';




class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
   
    super.initState();
    _navigateotherscreen();
  }
 _navigateotherscreen()async{
  await Future.delayed(Duration(seconds: 3), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcomescreen()));
 } 

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: SafeArea(
        child: Center(child: Image.asset('assets/images/Group 1.png')),
      ),
    );
  }
}