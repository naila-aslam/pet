import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/chatscreen.dart';
import 'package:petlover/screens/checkoutscreen.dart';
import 'package:petlover/screens/shop_pet.dart';
import 'package:petlover/utils/text_utils.dart';

class PetDetailScreen extends StatefulWidget {
  const PetDetailScreen({Key? key}) : super(key: key);

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
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
            Get.to(ShopPetScreen());
          },
        ),
        title: Center(
          child: Text(
            'Pet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(ShopPetScreen());
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 13.0, bottom: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 16,
                  children: [
                    Image.asset(
                      "assets/images/petdetailscreen.png",
                      width: 305,
                    ),
                    Image.asset(
                      "assets/images/petdetailscreen.png",
                      width: 305,
                    ),
                    Image.asset(
                      "assets/images/petdetailscreen.png",
                      width: 305,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils()
                            .normal18('Lucy', fontWeight: FontWeight.bold),
                        TextUtils()
                            .normal18('\$15', fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextUtils().normal14("Shorthair"),
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
                                  fontSize: 14, fontWeight: FontWeight.bold),
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
                                  fontSize: 14, fontWeight: FontWeight.bold),
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
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  TextUtils().normal14(
                    "Description",
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextUtils().normal14(
                "The British Shorthair is a breed version of the traditional British demestic cat,with a distinctively stocky build, thick coat and broad face. The most recognized color variant is 'British Blue', with a solid gray-blue coat, orange eyes,and a medium-sized tail.",
              ),
              SizedBox(
                height: 50.0,
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
                  ElevatedButton(
                    onPressed: () {
                      Get.to(CheckOutScreen());
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
    );
  }
}
