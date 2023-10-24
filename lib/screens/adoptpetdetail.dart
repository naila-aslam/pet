import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/adoptpetschedule.dart';
import 'package:petlover/screens/adoptpetscreen.dart';
import 'package:petlover/screens/cartscreen.dart';
import 'package:petlover/screens/chatscreen.dart';
import 'package:petlover/utils/text_utils.dart';

class AdoptPetDetail extends StatefulWidget {
  const AdoptPetDetail({super.key});

  @override
  State<AdoptPetDetail> createState() => _AdoptPetDetailState();
}

class _AdoptPetDetailState extends State<AdoptPetDetail> {
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
            Get.to(AdoptPetScreen());
          },
        ),
        title: Center(
          child: Text(
            'Adopt Pet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to((CartScreen()));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width / 0.2,
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/adopt2.png",
                          width: 300,
                          height: 300,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/adopt2.png",
                          width: 330,
                          height: 300,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/adopt2.png",
                          width: 300,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/adopt2.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Casper',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$15',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text("Labrador Retriever"),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "1 Years",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Sex",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "3 Kg",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Divider(),
                  TextUtils()
                      .normal16("Description", fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 10,
                  ),
                  TextUtils().normal14(
                      "The Labrador Retriever is one of several types of game-collecting dogs and one of the most popular breeds of dog in the world because it is energetic, intelligent, and friendly making it suitable as a working dog. Labrador Retrievers are known to be smart and quick to learn, and love to be praised."),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(ChatScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 16.0),
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.blue),
                        ),
                        child: TextUtils().normal18(
                          'Chat Seller',
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(AdoptPetSchedule());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 16.0),
                          backgroundColor: Colors.blue,
                          side: BorderSide(color: Colors.blue),
                        ),
                        child: TextUtils().normal18(
                          'Continue',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
