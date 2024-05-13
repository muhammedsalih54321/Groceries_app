import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/orderacceptedscreen.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  List img = [
    'assets/images/img6.png',
    'assets/images/img24.png',
    'assets/images/img5.png',
    'assets/images/img7.png',
  ];

  List name = [
    'Bell Pepper Red',
    'Egg Chicken Red',
    'Organic Banana',
    'Organic  Ginger ',
  ];

  List sub = [
    '1kg, price',
    '4Pcs, price',
    '12kg, price',
    '250gm, price',
  ];

  List price = [
    '\$4.99',
    '\$1.99',
    '\$3.00',
    '\$2.99',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text(
              'My Cart ',
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
          Divider(
            thickness: .3,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 125.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 20),
                          child: Container(
                            width: 80.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(img[index]))),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: " Gilroy",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  width: 100.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              sub[index],
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: " Gilroy",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.minus,
                                      color: Colors.grey,
                                    )),
                                GestureDetector(
                                  child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(15.r)),
                                      child: Center(
                                          child: Text(
                                        '1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ))),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0xFF53B175),
                                    )),
                                SizedBox(
                                  width: 70.w,
                                ),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: " Gilroy",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.sp),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: .3,
                    color: Colors.grey,
                  );
                },
                itemCount: img.length),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(

                isDismissible: false,
                context: context,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),
                builder: (BuildContext context) {
                  return Container(
                    
                    child: Column(
                      children: [
                        SizedBox(height: 20.h,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                   'Checkout',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25.sp),
                                  ),
                                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.black,size: 30.sp,))
                            ],
                          ),
                        ),
                        SizedBox(height: 7.h,),
                        Divider(thickness: .3,color: Colors.grey,),
                        SizedBox(height: 7.h,),
                        Row(
                            
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,right: 115),
                                 child: Text(
                                     'Delivery',
                                      style: TextStyle(
                                          color: const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp),
                                    ),
                               ),
                                 
                                   Text(
                                   'Selected method',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30.sp,)
                            ],
                          ),
                          SizedBox(height: 7.h,),
                           Divider(thickness: .3,color: Colors.grey,),
                        SizedBox(height: 7.h,),
                        Row(
                            
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,right: 215),
                                 child: Text(
                                     'Payment',
                                      style: TextStyle(
                                          color: const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp),
                                    ),
                               ),
                                 
                                   Image.asset('assets/images/card.png'),
                                  Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30.sp,)
                            ],
                          ),
                          SizedBox(height: 7.h,),
                           Divider(thickness: .3,color: Colors.grey,),
                        SizedBox(height: 7.h,),
                        Row(
                            
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,right: 100),
                                 child: Text(
                                     'Promo Code',
                                      style: TextStyle(
                                          color: const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp),
                                    ),
                               ),
                                 
                                   Text(
                                   'Pick Discount',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30.sp,)
                            ],
                          ),
                          SizedBox(height: 7.h,),
                           Divider(thickness: .3,color: Colors.grey,),
                        SizedBox(height: 7.h,),
                        Row(
                            
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20,right: 172),
                                 child: Text(
                                     'Total Cost',
                                      style: TextStyle(
                                          color: const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.sp),
                                    ),
                               ),
                                 
                                   Text(
                                   '\$13.97',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  Icon(Icons.keyboard_arrow_right,color: Colors.black,size: 30.sp,)
                            ],
                          ),
                          SizedBox(height: 7.h,),
                            Divider(thickness: .3,color: Colors.grey,),
                            SizedBox(height: 5.h,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(children: [Text(
                                     'By placing an order you agree to our',
                                      style: TextStyle(
                                          color:const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                    ),],),
                            ),
                                  Padding(
                                     padding: const EdgeInsets.only(left: 20),
                                    child: Row(children: [Text(
                                     'Terms ',
                                      style: TextStyle(
                                          color:Colors.black,
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                    )
                                    ,Text(
                                     'And ',
                                      style: TextStyle(
                                          color:const Color.fromARGB(255, 111, 110, 110),
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                    ),
                                    Text(
                                     'Conditions',
                                      style: TextStyle(
                                          color:Colors.black,
                                          fontFamily: " Gilroy",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp),
                                    )
                                    ],),
                                  ),
                                  SizedBox(height: 15.h,),
                                  GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) =>Acceptedscreen())),
            child: Container(
              height: 60.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: Color(0xFF53B175)),
              child:Center(
                child: Text(
                        'Place Order',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: " Gilroy",
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                      
              ),
            ),
          ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 60.h,
              width: 340.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Color(0xFF53B175)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Text(
                      'Go to checkout ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp),
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  GestureDetector(
                      child: Container(
                          height: 19.h,
                          width: 33.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 26, 156, 54),
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Center(
                            child: Text('\$12.96',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9.sp,
                                    color: Colors.white)),
                          ))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      )),
    );
  }
}
