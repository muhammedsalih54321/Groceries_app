import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r)),
                    color: Color.fromARGB(123, 205, 199, 199)),
                child: Column(
                  children: [
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: false,
                      leading: IconButton(
                          onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.file_upload_outlined))
                      ],
                    ),
                  
                 CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/images/img4.png',
                      height: 600.h,
                      width: 600.w,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 170.0.h,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1.5.sp,
                  ),
                ),
                  ])
              ),
            
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: ListTile(
              title:Text(
                      'Naturel Red Apple',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp),
                    ) ,
                    subtitle:Text(
                      '1kg, Price',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: " Gilroy",
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp),
                    )  ,
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              
              children: [ IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.minus,color:Colors.grey ,))
                      ,
                       GestureDetector(
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(15.r)),
                                      child:Center(child: Text('1',style: TextStyle(fontWeight: FontWeight.w600),))
                                    ),
                                  ),
                                 
                      IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xFF53B175) ,))
                     ,SizedBox(width: 150.w,)
                     
                      ,Text(
                                    '\$4.99',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: " Gilroy",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.sp),
                                  ),
                      ],),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Divider(thickness: .3,color: Colors.grey,),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product details',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                 Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            SizedBox(height: 8.h,),
              Padding(
              padding: const EdgeInsets.only(right: 0, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss.\napples may be good for your heart. As part of a healtful\nand varied diet.',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),])),
                    Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Divider(thickness: .3,color: Colors.grey,),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
              child: Row(
                
                children: [
                  Text(
                    'Nutritions',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),SizedBox(width: 213.w,),
                  GestureDetector(
                                    child: Container(
                                      height: 18.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                       color: Color.fromARGB(255, 231, 231, 231),
                                          borderRadius:
                                              BorderRadius.circular(5.r)),
                                      child:Center(child: Text('100gr',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 9.sp,color: const Color.fromARGB(255, 110, 109, 109)),))
                                    ),
                                  ),
                                  SizedBox(width: 5.w,),

                 Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
            Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Divider(thickness: .3,color: Colors.grey,),
          ),
           Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
              child: Row(
                
                children: [
                  Text(
                    'Review',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: " Gilroy",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),SizedBox(width: 173.w,),
                  Image.asset('assets/images/Group 6834.png')
                                  ,SizedBox(width: 5.w,),

                 Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
                        GestureDetector(
              // onTap: () => Navigator.push(context,
              //     MaterialPageRoute(builder: (context) =>Homescreen())),
              child: Container(
                height: 60.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0xFF53B175)),
                child: Center(
                  child: Text(
                    'Add To Basket ',
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
  }
}
