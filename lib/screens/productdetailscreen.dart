import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/chatscreen.dart';
import 'package:petlover/screens/checkoutscreen.dart';
import 'package:petlover/screens/shop_pet.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
            'Product',
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
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 16,
                  children: [
                    Image.asset(
                      "assets/images/prod.png",
                      width: 305,
                    ),
                    Image.asset(
                      "assets/images/prod.png",
                      width: 305,
                    ),
                    Image.asset(
                      "assets/images/prod.png",
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
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtils().normal16("Carrot Fresh",
                            fontWeight: FontWeight.bold),
                        Text(
                          '\$5',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Food Rabit",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          '\$15',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextUtils()
                      .normal16("Description", fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 4.0,
                  ),
                  TextUtils().normal14(
                      "These carrots are harvested directly with very good conditions. This orange vegetable has long been known as rabbit food. The content of vitamins and nutrients in carrots is very good to meet the daily nutritional needs of rabbits."),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/Cardicon.png',
                          height: 40,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pet Shop 24",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "6391 Elgin St. Celina, Delaware 10299",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: ColorUtils.yellowcolor,
                      ),
                      const SizedBox(width: 1),
                      TextUtils().normal14("4.8"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
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
            ],
          ),
        ),
      ),
    );
  }
}
