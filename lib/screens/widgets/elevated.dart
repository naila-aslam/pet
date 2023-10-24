import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/login_screen.dart';
import 'package:petlover/utils/colors_utils.dart';

class CustomElevatedButton extends StatelessWidget {
  VoidCallback OnTap;
  String name;
  CustomElevatedButton({required this.name, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
            ),
            elevation: 0,
            side: BorderSide(color: Colors.blue),
            backgroundColor: ColorUtils.neutralWhitecolor,
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 20,
            ),
          ),
          onPressed: () {
            Get.to(LoginScreen());
          },
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              color: ColorUtils.bluecolor,
            ),
          ),
        ),
      ),
    );
  }
}
