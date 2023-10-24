import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/appointmentsummary.dart';
import 'package:petlover/screens/veterinarianprofile.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        // Center align the title
        title: const Text(
          "Appointmnet",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(const VeterinarianProfile());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtils()
                  .normal16("Select Services", fontWeight: FontWeight.bold),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Center(
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
                                ),
                                decoration: BoxDecoration(
                                  color: ColorUtils.purpalcolor,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    TextUtils()
                                        .normal16("\$17", color: Colors.black),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 1.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    TextUtils()
                                        .normal16("\$15", color: Colors.black),
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
                height: 20,
              ),
              TextUtils().normal16("Select Data", fontWeight: FontWeight.bold),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    // Wrap the Row with Expanded
                    child: Container(
                      color: Colors.white,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextUtils().normal16(
                                  "Today",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                TextUtils().normal14(
                                  "Aug 17",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            width: 80,
                            height: 55,
                            decoration: BoxDecoration(
                              color: ColorUtils.purpalcolor,
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextUtils().normal16(
                                  "Thursday",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                TextUtils().normal16(
                                  "Aug 18",
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            width: 80,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextUtils().normal16(
                                  "Friday",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                TextUtils().normal16(
                                  "Aug 19",
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            width: 80,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextUtils().normal16(
                                  "Monday",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                TextUtils().normal16(
                                  "Aug 22",
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            width: 80,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextUtils().normal16("Working Time", fontWeight: FontWeight.bold),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  TextUtils().normal16("9:00Am-9:30Am"),
                  SizedBox(
                    width: 60,
                  ),
                  TextUtils().normal16("Available", color: Colors.green),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.circle,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  TextUtils().normal16("9:30Am-10:00Am"),
                  SizedBox(
                    width: 60,
                  ),
                  TextUtils().normal16(
                    "Not Available",
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.circle,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  TextUtils().normal16("9:30Am-10:00Am"),
                  SizedBox(
                    width: 60,
                  ),
                  TextUtils().normal16(
                    "Not Available",
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
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
                    Get.to(AppointmentSummary());
                  },
                  child: TextUtils().normal16("Confrim Appointment"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
