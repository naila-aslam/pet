import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/walkthrough.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.off(() => Walkthrough());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bluecolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Logo.png",
              width: 200,
            ),
            const SizedBox(
              height: 5,
            ),
            TextUtils().normal22(
              'Be happy and Enjoy with pet',
              color: ColorUtils.neutralWhitecolor,
            ),
          ],
        ),
      ),
    );
  }
}
