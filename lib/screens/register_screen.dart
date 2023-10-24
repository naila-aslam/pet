import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/screens/walkthrough.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Add your navigation logic here
            Get.to(Walkthrough());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
            width: MediaQuery.of(context).size.width / 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtils().normal22("Register",
                    color: ColorUtils.blackcolor, fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 30.0,
                ),
                TextUtils().normal16(
                  "Name ",
                  color: ColorUtils.blackcolor,
                ),
                const SizedBox(
                  height: 7.0,
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
                    hintText: "Input your name",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextUtils().normal16(
                  "Phone",
                  color: ColorUtils.blackcolor,
                ),
                const SizedBox(
                  height: 7.0,
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
                    hintText: "Input your phone",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextUtils().normal16(
                  "Email",
                  color: ColorUtils.blackcolor,
                ),
                const SizedBox(
                  height: 7.0,
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
                    hintText: "Input your email",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextUtils().normal16(
                  "Password",
                  color: ColorUtils.blackcolor,
                ),
                const SizedBox(
                  height: 7.0,
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
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: ColorUtils.bluecolor,
                      padding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 30.0), // Decrease the vertical padding
                    ),
                    onPressed: () {
                      Get.to((HomeScreen()));
                    },
                    child: TextUtils().normal16("Register"),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Row(children: <Widget>[
                  Expanded(child: Divider()),
                  TextUtils().normal12("OR register with"),
                  Expanded(child: Divider()),
                ]),
                const SizedBox(
                  height: 60.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Vector.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Google",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.all(15.0),
                            side: BorderSide(color: Colors.grey),
                            elevation: 0,
                            backgroundColor: Colors.white),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button 2 press
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Facebook 1.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Facebook",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.all(15.0),
                          backgroundColor: Colors.white,
                          elevation: 0,
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextUtils().normal12(
                  "By tapping Register with Google or Facebook.",
                  color: ColorUtils.blackcolor,
                ),
                const SizedBox(
                  height: 0.0,
                ),
                Row(
                  children: [
                    TextUtils().normal12("You agree to the ",
                        color: ColorUtils.blackcolor),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Terms of Use",
                            style: TextStyle(
                              color: Colors.blue, // Set blue color
                            ),
                            // Add any other desired styling properties for "Terms of Use"
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(color: ColorUtils.blackcolor),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              color: Colors.blue, // Set blue color
                            ),
                            // Add any other desired styling properties for "Privacy Policy"
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
