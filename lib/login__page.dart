import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class login_2 extends StatefulWidget {
  const login_2({Key? key}) : super(key: key);

  @override
  State<login_2> createState() => _login_2State();
}

class _login_2State extends State<login_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Adaptive.h(50),
          width: 50.0.h,
          color: Colors.white,
          child: Center(
            child: Image.asset(
              "assets/images/login_2.png",
            ),
          ),
        ),
        Container(
          height: Adaptive.h(50),
          width: 50.0.h,
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
        ),
      ],
    );
  }
}
