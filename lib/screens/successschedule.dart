import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/adoptpetscreen.dart';
import 'package:petlover/utils/text_utils.dart';

class SuccessSchedule extends StatefulWidget {
  const SuccessSchedule({super.key});

  @override
  State<SuccessSchedule> createState() => _SuccessScheduleState();
}

class _SuccessScheduleState extends State<SuccessSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding:
              EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 10.0, left: 15.0, right: 15.0),
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                Image.asset("assets/images/Succes1.png",
                    height: 250, width: 250),
                SizedBox(
                  height: 30.0,
                ),
                TextUtils().normal20("Thank you!", fontWeight: FontWeight.bold),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: TextUtils().normal16(
                        "Schedule an appointment with the pet owner",
                      ),
                    ),
                    Center(
                        child: TextUtils().normal16("successfully created.")),
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                        (AdoptPetScreen())); // Navigate back to the previous screen
                  },
                  child: Container(
                    height: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        hintText: "Back to Home",
                        hintStyle: TextStyle(color: Colors.blue),
                      ),
                    ),
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
