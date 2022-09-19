import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login_Page_3 extends StatefulWidget {
  const Login_Page_3({Key? key}) : super(key: key);

  @override
  State<Login_Page_3> createState() => _Login_Page_3State();
}

class _Login_Page_3State extends State<Login_Page_3> {
  

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Container(
              height: Adaptive.h(30),
              width: Adaptive.w(100),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(1.cm),
                child: Image.asset(
                  "assets/images/login_2.png",
                ),
              )),
          Container(
            height: Adaptive.h(70),
            width: Adaptive.w(100),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
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
                // color: Colors.orange,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: Adaptive.h(4.5),
                      //27
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Login to continue",
                      style: GoogleFonts.roboto(
                          decoration: TextDecoration.none,
                          fontSize: Adaptive.sp(18), //20.0,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Adaptive.h(4.8),
                          left: Adaptive.w(5.0),
                          right: Adaptive.w(5.0)),
                      child: Material(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            InkWell(
                              //  Align(
                              //   heightFactor: 0.9,
                              child: Column(
                                children: [
                                  Align(
                                    heightFactor: 0.28,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: 8.0, top: 0, bottom: 0),
                                          child: Image.asset(
                                            "assets/images/emailIcon.png",
                                            filterQuality: FilterQuality.high,
                                          ),
                                        ),
                                        Text('Email',
                                            style: TextStyle(
                                                fontSize: Adaptive.sp(15.5),
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    247, 227, 235, 1)))
                                      ],
                                    ),
                                  ),
                                  Align(
                                    heightFactor: 0.5,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),

                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 14.5),
                                        hintStyle: TextStyle(
                                            color: const Color.fromRGBO(
                                                247, 227, 235, 1),
                                            fontSize: Adaptive.sp(15.5)),
                                        hintText: 'example@gmail.com',
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                        // labelText: 'Password',
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                        // floatingLabelStyle: GoogleFonts.mukta(
                                        //     color: Color.fromRGBO(137, 136, 138, 1),
                                        //     fontSize: 20.0),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      // Moves focus to next.
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                // height: Adaptive.h(5.8)
                                height: Adaptive.h(5.0)),
                            InkWell(
                              child: Column(
                                children: [
                                  Align(
                                    heightFactor: 0.1,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8.0, top: 0, bottom: 0),
                                          child: Image.asset(
                                              "assets/images/lockIcon.png",
                                              filterQuality: FilterQuality.high,
                                              color: Color.fromRGBO(
                                                  247, 227, 235, 1)),
                                        ),
                                        Text('Password',
                                            style: TextStyle(
                                                fontSize: Adaptive.sp(15.5),
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(
                                                    247, 227, 235, 1)))
                                      ],
                                    ),
                                  ),
                                  Align(
                                    heightFactor: 0.5,
                                    child: TextField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            top: 25.0,
                                            bottom: 0,
                                            left: 0,
                                            right: 0),
                                        hintStyle: TextStyle(
                                            color: const Color.fromRGBO(
                                                247, 227, 235, 1),
                                            fontSize: Adaptive.sp(15.5),
                                            letterSpacing: 3.0),
                                        hintText: '*********',
                                        suffixIcon: GestureDetector(
                                          //  onTap: _toggleObscured,
                                          child: Image.asset(
                                              "assets/images/eyeIcon.png",
                                              filterQuality:
                                                  FilterQuality.high),
                                        ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white,
                                                    style: BorderStyle.solid)),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      // Moves focus to next.
                                      obscureText: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                // height: Adaptive.h(3.4), // 80.0,
                                height: Adaptive.h(2.4)),
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: Adaptive.sp(15.5),
                                      color: Color.fromRGBO(247, 227, 235, 1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        // height: Adaptive.h(3.2),
                        height: Adaptive.h(2.5)),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: Adaptive.sp(15)),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.fromLTRB(
                                    40.0, 18.0, 40.0, 18.0)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                      ),
                    ),
                    SizedBox(
                      // height: Adaptive.h(2.8),
                      height: Adaptive.h(2.0),
                    ),
                    Text(
                      "Or login with ",
                      style: GoogleFonts.roboto(
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(251, 246, 239, 1),
                          fontWeight: FontWeight.w300,
                          fontSize: Adaptive.sp(15)),
                    ),
                    SizedBox(
                      height: Adaptive.h(2.8),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Chip(
                          elevation: 0.0,

                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          avatar: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                                "assets/images/fbIcon.png"), //NetwordImage
                          ), //CircleAvatar
                          label: Text(
                            'Facebook',
                            style: TextStyle(
                              fontFamily: "Roboto",
                              color: const Color.fromRGBO(77, 123, 237, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: Adaptive.sp(15),
                            ),
                          ), //Text
                        ),
                        SizedBox(
                          width: Adaptive.w(4.8),
                        ),
                        Chip(
                          elevation: 0.0,
                          // labelPadding:
                          //     EdgeInsets.fromLTRB(0, 0, 10.0, 0),

                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          avatar: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                                "assets/images/googleIcon.png"), //NetwordImage
                          ), //CircleAvatar
                          label: Padding(
                            padding:
                                EdgeInsets.only(left: 0, right: Adaptive.w(3)),
                            child: Text(
                              "Google",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                color: const Color.fromRGBO(235, 78, 65, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: Adaptive.sp(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.0.h,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Don't have an account?  ",
                            style: TextStyle(
                              color: Color.fromRGBO(246, 240, 219, 1),
                              fontWeight: FontWeight.w300,
                              fontSize: Adaptive.sp(13.3),
                            ),
                            children: [
                          TextSpan(
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = (){
                              //         print("hello9 Manish ")
                              //         // Single tapped.
                              //       },
                              text: 'SIGNUP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: Adaptive.sp(14),
                                  color: Color.fromRGBO(255, 255, 255, 1)))
                        ])),
                    // SizedBox(
                    //   width: Adaptive.w(10),
                    //   child: Padding(
                    //     padding: EdgeInsets.only(bottom: Adaptive.h(1)),
                    //     child: Divider(
                    //       color: Color.fromRGBO(236, 230, 178, 1),
                    //       thickness: 5.0,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
                // Positioned(
                //   bottom: (screenHeight == 600 && screenWidth == 1024)
                //       ? 0.5.cm
                //       : 1.cm,
                //   left: 30.w,
                //   right: (screenHeight == 600 && screenWidth == 1024)
                //       ? 29.w
                //       : 25.w,
                //   child: Center(
                //     child: RichText(
                //         text: TextSpan(
                //             text: "Don't have an account?  ",
                //             style: TextStyle(
                //               color: Color.fromRGBO(246, 240, 219, 1),
                //               fontWeight: FontWeight.w300,
                //               fontSize: Adaptive.sp(13.3),
                //             ),
                //             children: [
                //           TextSpan(
                //               // recognizer: TapGestureRecognizer()
                //               //   ..onTap = (){
                //               //         print("hello9 Manish ")
                //               //         // Single tapped.
                //               //       },
                //               text: 'SIGNUP',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.w800,
                //                   fontSize: Adaptive.sp(14),
                //                   color: Color.fromRGBO(255, 255, 255, 1)))
                //         ])),
                //   ),
                // ),
                Positioned(
                    bottom: 5.px,
                    // left: (screenHeight == 600 && screenWidth == 1024 ||
                    //         screenHeight == 800 && screenWidth == 1280)
                    //     ? 42.5.w
                    left: 40.w,
                    child: SizedBox(
                      // width: (screenHeight == 600 && screenWidth == 1024 ||
                      //         screenHeight == 800 && screenWidth == 1280)
                      //     ? Adaptive.w(15)
                      width: Adaptive.w(20),
                      child: const Divider(
                        color: Color.fromRGBO(236, 230, 178, 1),
                        thickness: 5.0,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
