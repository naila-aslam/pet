import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/editprofilescreen.dart';
import 'package:petlover/screens/faqscreen.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/utils/text_utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/homepage1.png",
                        height: 215,
                        width: 420,
                      ),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  color: Colors.black,
                                  onPressed: () {
                                    Get.to(HomeScreen());
                                  },
                                ),
                                SizedBox(width: 80.0),
                                TextUtils().normal20("Profile",
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Positioned(
                  top: 126,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 325,
                        height: 86,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(EditProfileScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 13.0),
                              Image.asset(
                                "assets/images/homepage.png",
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(width: 15.0),
                              Text(
                                'Amel Jane',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Spacer(),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextUtils()
                              .normal16("About Apps", color: Colors.black87),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Colors.white,
                        elevation: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to((FAQScreen()));
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextUtils().normal16("FAQ", color: Colors.black87),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Colors.white,
                        elevation: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextUtils().normal16("Privacy Policy",
                              color: Colors.black87),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Colors.white,
                        elevation: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextUtils()
                              .normal16("Rating Apps", color: Colors.black87),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        primary: Colors.white,
                        elevation: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TextUtils().normal16("Logout", color: Colors.black87),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          primary: Colors.white,
                          elevation: 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextUtils().normal16("Version App 1.0"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
