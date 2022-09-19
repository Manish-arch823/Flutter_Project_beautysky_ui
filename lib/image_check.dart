import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class image_check extends StatefulWidget {
  const image_check({Key? key}) : super(key: key);

  @override
  State<image_check> createState() => _image_checkState();
}

class _image_checkState extends State<image_check> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      padding: EdgeInsets.all(30.w),
      child: Image.asset(
        "assets/images/login_3.png",
      ),
    );
  }
}
