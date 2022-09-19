import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buttom_Navigation_Bar(context),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Adaptive.sp(20.0)),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Hi, John",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500)),
                ),
                Material(
                  child: InkWell(
                    child: InkWell(
                        child: Row(
                      children: [
                        Text(
                          "Chicago, llinois",
                          style: TextStyle(
                              color: const Color.fromRGBO(181, 181, 181, 1),
                              fontSize: Adaptive.sp(16)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            'images/dropdownW.png',
                            color: const Color.fromRGBO(161, 161, 161, 1),
                            height: 15.0,
                            width: 15.0,
                          ),
                        )
                      ],
                    )),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          // flex: 1,
                          child: Container(
                            // padding: EdgeInsets.only(left: 11),
                            height: 35,
                            child: Material(
                              child: TextField(
                                // cursorColor: Color.fromARGB(255, 109, 29, 29),

                                decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    // border: InputBorder.none,
                                    fillColor: Colors.grey.withOpacity(0.1),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 241, 235, 235),
                                          width: 5.0),
                                      borderRadius: BorderRadius.circular(30),
                                      // borderSide: BorderSide.none
                                    ),
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 156, 153, 153),
                                      fontSize: 15, height: 2.6,
                                      //backgroundColor: Colors.grey
                                    ),
                                    prefixIcon: Container(
                                      width: 18,
                                      padding: EdgeInsets.all(10),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            'images/search.png',
                                            width: 15,
                                            height: 15,
                                            color:
                                                Color.fromARGB(255, 99, 94, 94),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.transparent,
                          height: 32,
                          width: 60,
                          margin: const EdgeInsets.only(left: 10),
                          // padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 211, 134, 201),
                                  Color.fromARGB(255, 241, 228, 111),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              // color: Theme.of(context).primaryColor,
                              //color: Colors.orange,
                              borderRadius: BorderRadius.circular(19)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.2, vertical: 6),
                            child: Image.asset(
                              'images/filter_B.png',
                              color: Colors.white.withOpacity(0.8),
                              height: 0.5,
                              width: 2.0,
                              scale: 1,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Adaptive.sp(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top of Feed",
                  style: TextStyle(
                      fontSize: Adaptive.sp(
                        20,
                      ),
                      color: const Color.fromRGBO(34, 34, 34, 1)),
                ),
                Text("Show all",
                    style: TextStyle(
                        fontSize: Adaptive.sp(15),
                        color: Color.fromRGBO(144, 144, 144, 1))),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(Adaptive.sp(20)),
              child: Row(
                children: [
                  Container(
                      height: 25.h,
                      width: 49.w,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(
                            Adaptive.px(22),
                          ))),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/card1.png",
                            height: 12.5.h,
                            width: 49.w,
                            // width: Adaptive.w(10),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    " Title Feed Item",
                                    style: GoogleFonts.roboto(
                                        color:
                                            const Color.fromRGBO(34, 34, 34, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  " Body of feed item . Brief description of feed item. Withj some more details and other thigs",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/heading1.png",
                                      height: 3.5.h,
                                      width: 3.5.h,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 3.w,
                  ),
                  Container(
                    height: 25.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.all(Radius.circular(Adaptive.px(30)))),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Container(
                    height: 25.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.all(Radius.circular(Adaptive.px(30)))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttom_Navigation_Bar(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.11,
      width: screenWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
          stops: [
            0.1,
            0.5,
            0.8,
            1,
          ],
          colors: [
            Color.fromRGBO(224, 131, 191, 1),
            Color.fromRGBO(220, 171, 141, 1),
            Color.fromRGBO(218, 195, 111, 1),
            Color.fromRGBO(216, 210, 94, 1),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/menuIcon.png",
                height: 25.0,
                width: 25.0,
              ),
              const Text(
                "Menu",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          InkWell(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/home.png",
                height: 25.0,
                width: 25.0,
              ),
              const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          InkWell(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/scanIcon.png",
                height: 25.0,
                width: 25.0,
              ),
              const Text(
                "Scan",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          InkWell(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/search.png",
                height: 25.0,
                width: 25.0,
              ),
              const Text(
                "Search",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          InkWell(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/profile.png",
                height: 25.0,
                width: 25.0,
              ),
              const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
        ],
      ),
    );
  }
}
