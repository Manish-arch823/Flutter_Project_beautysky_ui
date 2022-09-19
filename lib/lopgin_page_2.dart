import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class login_2_page extends StatefulWidget {
  const login_2_page({Key? key}) : super(key: key);

  @override
  State<login_2_page> createState() => _login_2_pageState();
}

class _login_2_pageState extends State<login_2_page> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              // color: Colors.red,
              color: Color.fromRGBO(216, 210, 94, 1),
              border: Border.all(color: Colors.transparent)),
          padding: (screenHeight == 600 && screenWidth == 1024 ||
                  screenHeight == 800 && screenWidth == 1280)
              ? EdgeInsets.symmetric(horizontal: Adaptive.w(45))
              : EdgeInsets.symmetric(horizontal: Adaptive.w(40)),
          child: SizedBox(
            width: Adaptive.w(10),
            child: Padding(
              padding: EdgeInsets.only(bottom: Adaptive.h(1)),
              child: Divider(
                color: Color.fromRGBO(236, 230, 178, 1),
                thickness: 5.0,
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: Adaptive.h(27.5),
            width: 100.w,
            color: Colors.white,
            child: Padding(
              padding: (screenHeight == 600 && screenWidth == 1024)
                  ? EdgeInsets.symmetric(vertical: 0.8.cm)
                  : EdgeInsets.symmetric(vertical: 1.5.cm),
              child: Center(
                child: Image.asset(
                  "assets/images/login_2.png",
                ),
              ),
            ),
          ),
          Container(
              width: 100.w,
              height: Adaptive.h(70.0),
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
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(5.7),
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
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white,
                                              style: BorderStyle.solid)),
                                      // labelText: 'Password',
                                      focusedBorder: const UnderlineInputBorder(
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
                          SizedBox(height: Adaptive.h(5.8)),
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
                                    style: const TextStyle(color: Colors.white),
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
                                            filterQuality: FilterQuality.high),
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white,
                                              style: BorderStyle.solid)),
                                      focusedBorder: const UnderlineInputBorder(
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
                            height: Adaptive.h(3.4), // 80.0,
                          ),
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
                    height: Adaptive.h(3.2),
                  ),
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white)))),
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(2.8),
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
                    height: 3.h,
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
                ],
              )),
        ]),
      ),
    );
  }
}
