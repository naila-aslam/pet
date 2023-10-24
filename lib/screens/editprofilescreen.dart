import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/profilescreen.dart';
import 'package:petlover/screens/successschedule.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/homepage1.png",
                      height: 215,
                      width: 420,
                    ),
                    Positioned(
                      top: 30,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.black,
                            onPressed: () {
                              Get.to(ProfileScreen());
                            },
                          ),
                          SizedBox(width: 100.0),
                          TextUtils()
                              .normal20("Profile", fontWeight: FontWeight.bold),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/homepage.png",
                            height: 100,
                            width: 90,
                          ),
                        ),
                        Center(child: TextUtils().normal16("Change Photo")),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      TextUtils().normal16("Name", fontWeight: FontWeight.bold),
                      SizedBox(height: 10.0),
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Amel",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextUtils()
                          .normal16("Email", fontWeight: FontWeight.bold),
                      SizedBox(height: 10.0),
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          hintText: "Amelcamel@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextUtils()
                          .normal16("Phone", fontWeight: FontWeight.bold),
                      SizedBox(height: 10.0),
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          hintText: "Amelcamel@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextUtils()
                          .normal16("Address", fontWeight: FontWeight.bold),
                      SizedBox(height: 10.0),
                      TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 18.0),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 40.0, horizontal: 20.0),
                          hintText: "Amelcamel@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
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
                            padding: EdgeInsets.all(20.0),
                          ),
                          onPressed: () {
                            Get.to(SuccessSchedule());
                          },
                          child: TextUtils().normal16("Save"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
