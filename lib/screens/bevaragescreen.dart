import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bevaragescreen extends StatefulWidget {
  const Bevaragescreen({super.key});

  @override
  State<Bevaragescreen> createState() => _BevaragescreenState();
}

class _BevaragescreenState extends State<Bevaragescreen> {
  List img = [
    'assets/images/img18.png',
    'assets/images/img19.png',
    'assets/images/img20.png',
    'assets/images/img21.png',
    'assets/images/img22.png',
    'assets/images/img23.png',
  ];

  List name = [
    'Deit Coke',
    'Sprite Can',
    'Apple & Grape\nJuice',
    'Orange Juice',
    'Coca Cola Can',
    'Pepsi Can'
  ];

  List sub = [
    '335ml, price',
    '325ml, price',
    '2L, price',
    '2L, price',
    '325ml, price',
    '330ml, price'
  ];

  List price = [
    '\$1.99',
    '\$1.50',
    '\$15.99',
    '\$15.99',
    '\$4.99',
    '\$4.99',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              centerTitle: true,
              title: Text(
                'Bevarages',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: " Gilroy",
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.slider_horizontal_3,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.sp,
                    mainAxisSpacing: 12.sp,
                    mainAxisExtent: 230),
                itemCount: img.length,
                itemBuilder: (BuildContext context, int index) {
                  // return Container(color: Colors.black,) ;

                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Image.asset(
                            img[index],
                            height: 90.h,
                            width: 90.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  name[index],
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
                                  sub[index],
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
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price[index],
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
              ),
            ),
          )
        ],
      )),
    );
  }
}
