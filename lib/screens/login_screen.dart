import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/screens/walkthrough.dart';
import 'package:petlover/utils/colors_utils.dart';

import '../utils/text_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(Walkthrough());
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtils().normal22("Login",
                  color: ColorUtils.blackcolor, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 30.0,
              ),
              TextUtils().normal16(
                "Email or Phone Number ",
                color: ColorUtils.blackcolor,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                  hintText: "Input your email or phone number",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextUtils().normal16(
                "Password",
                color: ColorUtils.blackcolor,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                    hintText: "Input Your password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: ColorUtils.bluecolor,
                      padding: EdgeInsets.all(20.0),
                    ),
                    onPressed: () {
                      Get.to((HomeScreen()));
                    },
                    child: TextUtils().normal16("Login")),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Row(children: <Widget>[
                Expanded(child: Divider()),
                TextUtils().normal12("OR login With"),
                Expanded(child: Divider()),
              ]),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  prefixIcon: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Vector.png',
                          height: 20.0,
                          width: 20.0,
                        ),
                        SizedBox(
                            width:
                                8.0), // Adjust the spacing between the image and text
                        TextUtils()
                            .normal14("Google", fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: "Facebook",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  prefixIcon: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Facebook 1.png',
                          height: 20.0,
                          width: 20.0,
                        ),
                        SizedBox(
                            width:
                                8.0), // Adjust the spacing between the image and text
                        TextUtils()
                            .normal14("Facebook", fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
