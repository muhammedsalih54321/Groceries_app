

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/productdetails.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List img1 = [
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img5.png'
  ];
  List name1 = [
    'Red Apple',
    'Banana',
    'Organic Banana',
  ];
  List sub1 = [
    '5kg,priceg',
    '7pcs,priceg',
    '1kg,priceg',
  ];

  List img2 = [
    'assets/images/img6.png',
    'assets/images/img7.png',
    'assets/images/img5.png'
  ];
  List name2 = [
    'Bell Pepper Red',
    'ginger',
    'Organic Banana',
  ];
  List sub2 = [
    '1kg,priceg',
    '250gm,priceg',
    '2kg,priceg',
  ];
  List img3 = [
    'assets/images/img8.png',
    'assets/images/img9.png',
    'assets/images/img5.png'
  ];
  List name3 = [
    'Beef Bone',
    'Boiler chicken',
    'Organic Banana',
  ];
  List sub3 = [
    '1kg,priceg',
    '2kg,priceg',
    '3kg,priceg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.asset(
              'assets/images/carrot2.png',
              height: 35.h,
              width: 35.w,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: const Color.fromARGB(255, 85, 84, 84),
                  ),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 85, 84, 84),
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
            
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
            CarouselSlider(
              items: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Image.asset('assets/images/banner.png'),
                )
              ],
              options: CarouselOptions(
                height: 170.0.h,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1.5.sp,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFF53B175),
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdetails())),
                        child: Container(
                          width: 165.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            children: [
                              Image.asset(
                                img1[index],
                                height: 110.h,
                                width: 110.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      name1[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      sub1[index],
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$4.99',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp),
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF53B175),
                                            borderRadius:
                                                BorderRadius.circular(15.r)),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: img1.length,
                )),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFF53B175),
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: Container(
                        width: 165.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          children: [
                            Image.asset(
                              img2[index],
                              height: 110.h,
                              width: 110.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    name2[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    sub2[index],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF53B175),
                                          borderRadius:
                                              BorderRadius.circular(15.r)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: img1.length,
                )),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groceries',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFF53B175),
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 250.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color.fromARGB(88, 240, 178, 145)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/img10.png',
                              height: 80.h,
                              width: 80.w,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Pulses',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: " Gilroy",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                 
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 250.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color:Color.fromARGB(133, 141, 206, 143)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset(
                              'assets/images/img11.png',
                              height: 80.h,
                              width: 80.w,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Rice',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: " Gilroy",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 0),
                      child: Container(
                        width: 165.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(color: Colors.grey)),
                        child: Column(
                          children: [
                            Image.asset(
                              img3[index],
                              height: 110.h,
                              width: 110.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    name3[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    sub3[index],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF53B175),
                                          borderRadius:
                                              BorderRadius.circular(15.r)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: img1.length,
                )),
                 SizedBox(
                              height: 10.h,
                            ),
          ],
        ),
      )),
    );
  }
}
