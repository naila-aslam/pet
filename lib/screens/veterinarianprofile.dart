import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/appointment.dart';
import 'package:petlover/screens/listveterinarian.dart';
import 'package:petlover/screens/map.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class VeterinarianProfile extends StatefulWidget {
  const VeterinarianProfile({super.key});

  @override
  State<VeterinarianProfile> createState() => _VeterinarianProfileState();
}

class _VeterinarianProfileState extends State<VeterinarianProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/profile.png",
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.black,
                                onPressed: () {
                                  Get.to(const ListVeterinarian());
                                },
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              TextUtils().normal20("Veterinarian Profile",
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 50,
                                  minRadius: 50,
                                  backgroundImage: AssetImage(
                                    "assets/images/imageprofile.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Jaxson Calzoni",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "One Stop Clinic",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Experience",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                          Text(
                                            "Ratings",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          TextUtils().normal14("5 Years",
                                              fontWeight: FontWeight.bold),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            "4,9",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 214,
                    right: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 5.0, left: 10.0, top: 15.0),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextUtils().normal14("Working Time",
                              fontWeight: FontWeight.bold),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal12(
                                "Date",
                              ),
                              TextUtils().normal12(
                                "Time",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal14("Monday-Friday",
                                  fontWeight: FontWeight.bold),
                              TextUtils().normal14("9:00 AM - 5:00 PM",
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          Divider(),
                          SizedBox(
                            height: 10,
                          ),
                          TextUtils().normal14("Location",
                              fontWeight: FontWeight.bold),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal12("Name Clinic"),
                              InkWell(
                                onTap: () {
                                  Get.to((MapScreen()));
                                },
                                child: Text(
                                  "view on map",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextUtils().normal14("One Stop Clinic",
                              fontWeight: FontWeight.bold),
                          SizedBox(height: 10.0),
                          Divider(),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextUtils()
                              .normal16("Service", fontWeight: FontWeight.bold),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10.0),
                                                TextUtils().normal16(
                                                  "Consultation",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(height: 5),
                                                TextUtils().normal14("\$10",
                                                    color: Colors.black),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10.0),
                                                TextUtils().normal14(
                                                  "Sterilization",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                TextUtils().normal16("\$17",
                                                    color: Colors.black),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1.0),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10.0),
                                                TextUtils().normal14(
                                                  "Vacination",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                TextUtils().normal16("\$15",
                                                    color: Colors.black),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                backgroundColor: ColorUtils.bluecolor,
                                padding: EdgeInsets.all(18.0),
                              ),
                              onPressed: () {
                                Get.to(AppointmentScreen());
                              },
                              child: TextUtils().normal16("Create Appointment",
                                  color: Colors.white),
                            ),
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
      ),
    );
  }
}
