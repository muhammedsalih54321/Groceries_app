import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  List img = [
    'assets/images/img19.png',
    'assets/images/img18.png',
    'assets/images/img20.png',
    'assets/images/img22.png',
    'assets/images/img23.png',
  ];

  List name = [
    'Sprite     Can',
    'Deite     Coke',
    'Apple&Grape',
    'CocaCola can',
    'Pepsi     Can'
  ];

  List sub = [
    '325ml, price',
    '335ml, price',
    '2L, price',
    '325ml, price',
    '330ml, price'
  ];

  List price = [
    '\$1.50',
    '\$1.99',
    '\$15.50',
    '\$4.99',
    '\$4.99',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text(
              'Favourite',
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
                    height: 110.h,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            width: 30.w,
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //     image: AssetImage(img[index]))),
                                ),
                            child: Image.asset(
                              img[index],
                              height: 80.h,
                              width: 80.w,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
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
                                  width: 120.w,
                                ),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: " Gilroy",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Colors.black,
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
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 540.h,
                      width: 400.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                          Image.asset('assets/images/img31.png'),
                          SizedBox(height: 10.h,),
                          Text(
                              'Oops! Order Failed',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: " Gilroy",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23.sp),
                            ),  SizedBox(height: 10.h,),
                          Text(
                              'Something went tembly wrong.',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: " Gilroy",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp),
                            ),
                            SizedBox(height: 50.h,),
                             Container(
              height: 60.h,
              width: 270.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: Color(0xFF53B175)),
              child: Center(
                child: Text(
                  'Please Try Again',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: " Gilroy",
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp),
                ),
              ),
            ),
            TextButton(onPressed: (){ Navigator.pop(context);}, child:Text(
                  'Back to home',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: " Gilroy",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                ),)


                        ],
                      ),
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
              child: Center(
                child: Text(
                  'Add All To Cart ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: " Gilroy",
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp),
                ),
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
