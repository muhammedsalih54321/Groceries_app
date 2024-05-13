
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/account.dart';
import 'package:online_groceries/screens/cartscreen.dart';
import 'package:online_groceries/screens/explorescreen.dart';
import 'package:online_groceries/screens/favouritescreen.dart';
import 'package:online_groceries/screens/homescreen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  final screen = [
    Homescreen(),
    Explorescreen(),
    Cartscreen(),
    Favouritescreen(),
    Accountscreen()
  ];
  int indexnum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Color(0xFF53B175),
        selectedLabelStyle: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),
        
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
       selectedIconTheme: IconThemeData(color:Color(0xFF53B175) ),
        
        

        iconSize: 28.sp,
          currentIndex: indexnum,
          onTap: (index) => setState(() {
                indexnum = index;
              }),
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              
                label: 'Shope',
                icon: Icon(
                  Icons.store,
                  color:indexnum==0?Color(0xFF53B175):Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Explore',
                
                
                icon: Icon(
                  
                  Icons.search,
                  color:indexnum==1?Color(0xFF53B175):Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color:indexnum==2?Color(0xFF53B175):Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Favourite',
                icon: Icon(
                  Icons.favorite_outline,
                  color: indexnum==3?Color(0xFF53B175):Colors.black,
                )),
            BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(
                  Icons.person_outline_outlined,
                  color:indexnum==4?Color(0xFF53B175):Colors.black,
                ))
          ]),
      body: screen[indexnum],
    );
  }
}
