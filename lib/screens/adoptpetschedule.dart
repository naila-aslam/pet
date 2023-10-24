import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:petlover/screens/adoptpetdetail.dart';
import 'package:petlover/screens/successschedule.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class AdoptPetSchedule extends StatefulWidget {
  const AdoptPetSchedule({super.key});

  @override
  State<AdoptPetSchedule> createState() => _AdoptPetScheduleState();
}

class _AdoptPetScheduleState extends State<AdoptPetSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        centerTitle: true,
        // Center align the title
        title: Text(
          "Adop Pet",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(AdoptPetDetail());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextUtils()
                  .normal16("Information Pet", fontWeight: FontWeight.bold),
              SizedBox(
                height: 5.0,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/adopt2.png",
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lucky",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // TextUtils().normal20("\$5", fontWeight: FontWeight.bold),
                      ],
                    ),
                    Text("Labored Retriever"),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              TextUtils()
                  .normal18("Create Schedule", fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  hintText: "17 August 2022",
                  hintStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(),
              TextUtils()
                  .normal18("Adopter Information", fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.0,
              ),
              TextUtils().normal14("Name", color: Colors.black87),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  hintText: "Input your name",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextUtils().normal14("Phone", color: Colors.black87),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  hintText: "Input your name",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextUtils().normal14("Address", color: Colors.black87),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18.0),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                  hintText: "Input your name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 30.0,
              ),
              Divider(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: ColorUtils.bluecolor,
                        padding: EdgeInsets.all(20.0)),
                    onPressed: () {
                      Get.to((SuccessSchedule()));
                    },
                    child: TextUtils().normal16("Send Application")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
