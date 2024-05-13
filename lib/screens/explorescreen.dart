import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/components/productcard.dart';
import 'package:online_groceries/screens/searchscreen.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Center(
              child: Text(
                'Find Products ',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: " Gilroy",
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Searchscreen())),
              child: Container(
                  height: 53.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color.fromARGB(255, 232, 230, 230)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Search store',
                          style: TextStyle(
                              color: Color.fromARGB(255, 109, 108, 108),
                              fontFamily: " Gilroy",
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp),
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                 Productcard(img:  'assets/images/img12.png', name: 'Frash Fruits\n& Vegetable', color:Color(0xFF53B175), brcolor: Color.fromARGB(57, 83, 177, 117),)
                  ,SizedBox(
                    width: 10.w,
                  ),
                   Productcard(img:  'assets/images/img13.png', name: 'Cooking Oil\n& Ghee', color: const Color.fromARGB(255, 211, 191, 5), brcolor:Color.fromARGB(59, 255, 235, 59),)
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                 Productcard(img:  'assets/images/img14.png', name: 'Meat & Fish', color:Colors.orange, brcolor:const Color.fromARGB(49, 255, 153, 0),)
                  ,SizedBox(
                    width: 10.w,
                  ),
                   Productcard(img:  'assets/images/img15.png', name: 'Bakery & Snacks', color: const Color.fromARGB(100, 155, 39, 176), brcolor:Color.fromARGB(39, 155, 39, 176),)
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                 Productcard(img:  'assets/images/img16.png', name: 'Dairy & Eggs', color:Color.fromARGB(255, 207, 204, 150), brcolor:Color.fromARGB(47, 215, 173, 109),)
                  ,SizedBox(
                    width: 10.w,
                  ),
                   Productcard(img:  'assets/images/img17.png', name: 'Bevarages', color: Color.fromARGB(99, 66, 30, 166), brcolor:Color.fromARGB(39, 129, 173, 204),)
                ],
              ),
            ),
             SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                 Productcard(img:  'assets/images/img12.png', name: 'Frash Fruits\n& Vegetable', color:Color(0xFF53B175), brcolor: Color.fromARGB(57, 83, 177, 117),)
                  ,SizedBox(
                    width: 10.w,
                  ),
                   Productcard(img:  'assets/images/img13.png', name: 'Cooking Oil\n& Ghee', color: const Color.fromARGB(255, 211, 191, 5), brcolor:Color.fromARGB(59, 255, 235, 59),)
                ],
              ),
            ),
                    ],
                  ),
          )),
    );
  }
}
