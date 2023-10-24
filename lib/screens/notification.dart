import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/utils/text_utils.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(HomeScreen());
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.to(PetDetailScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.to(PetDetailScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Text(
                    'Latest',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.to(PetDetailScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black54),
                    ),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Text(
                    'Purchase',
                    style: TextStyle(color: Colors.black54),
                  ), // Add a child widget for the button
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.to(PetDetailScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Text(
                    'Adopt',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/shopping.png",
                  width: 40,
                ),
                SizedBox(
                    width:
                        8), // Add space of 8 pixels between the image and the text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils().normal14("Purchase Order :  Makanan Hewan"),
                    TextUtils().normal14(
                      "\$10",
                    ),
                    TextUtils()
                        .normal16("8 minutes ago", color: Colors.black38),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/export.png",
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils().normal14(
                        "Scheduled appointments with pet owners \naccepted",
                      ),
                      TextUtils()
                          .normal14("12 August 2022", color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
