
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_groceries/screens/filterscreen.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();

}

class _SearchscreenState extends State<Searchscreen> {
   List img = [
    'assets/images/img24.png',
    'assets/images/img25.png',
    'assets/images/img26.png',
    'assets/images/img27.png',
    'assets/images/img28.png',
    'assets/images/img29.png',
  ];

  List name = [
    'Egg Chicken Red',
     'Egg Chicken white',
     'Egg Pastha',
     'Egg Noodles',
    'Mayonnais Eggless',
    ' Egg Noodles'
  ];

  List sub = [
    '4Pcs, price',
    '180g, price',
    '300g, price',
    '2L, price',
    '325g, price',
    '1kg, price'
  ];

  List price = [
    '\$1.99',
    '\$1.50',
    '\$15.99',
    '\$15.99',
    '\$4.99',
    '\$4.99',
  ];

  int indexnum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
       SizedBox(height: 60,child:  Row(children: [
          SizedBox(width: 20.w,),
           GestureDetector(
              // onTap: () => Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Searchscreen())),
              child: Container(
                  height: 53.h,
                  width: 298.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
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
                          width: 7.w,
                        ),
                        Text(
                          'Egg',
                          style: TextStyle(
                              color: Color.fromARGB(255, 51, 51, 51),
                              fontFamily: " Gilroy",
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                        ),SizedBox(width: 200.w,)
                        ,CircleAvatar(radius: 8.r,backgroundColor: Colors.grey,child: Center(child: Icon(Icons.close,color: Colors.white,size: 12.sp,)),)
                     
                      ],
                    ),
                  )),
                  
            ),
            IconButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Filterscreen()));},
                    icon: Icon(
                      CupertinoIcons.slider_horizontal_3,
                      color: Colors.black,
                    ))
            ],),),
             SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.sp,
                  mainAxisSpacing: 12.sp,
                  mainAxisExtent: 200),
              
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
                          height: 25.h,
                        ),
                        Image.asset(
                          img[index],
                          height: 90.h,
                          width: 90.w,
                        ),
                         SizedBox(
                          height: 5.h,
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
                                    fontSize: 15.sp),
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
                    ],)),
        bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Color(0xFF53B175),
        selectedLabelStyle: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),
        
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
       selectedIconTheme: IconThemeData(color:Color(0xFF53B175) ),
        
        

        iconSize: 28.sp,
          currentIndex: 1,
          // onTap: (index) => setState(() {
          //       indexnum = index;
          //     }),
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



    );
  }
}