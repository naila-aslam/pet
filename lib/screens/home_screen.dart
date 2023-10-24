import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/adoptpetscreen.dart';
import 'package:petlover/screens/cartscreen.dart';
import 'package:petlover/screens/favorite.dart';
import 'package:petlover/screens/listveterinarian.dart';
import 'package:petlover/screens/notification.dart';
import 'package:petlover/screens/profilescreen.dart';
import 'package:petlover/screens/searchscreen.dart';
import 'package:petlover/screens/shop_pet.dart';
import 'package:petlover/utils/text_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      top: 50,
                      left: 10,
                      child: SizedBox(
                        height: 80,
                        width: 330,
                        child: Row(
                          children: [
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Get.to((ProfileScreen()));
                                },
                                child: Image.asset(
                                  'assets/images/homepage.png',
                                  height: 40,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hello,Good Morning!",
                                    style: TextStyle(),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Amal Jane",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                Get.to((SearchScreen()));
                              },
                              child: Icon(Icons.search),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                Get.to(NotificationScreen());
                              },
                              child: Icon(
                                Icons.notifications_none,
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                Get.to((FavoriteCartScreen()));
                              },
                              child: Icon(Icons.favorite_border),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                Get.to((CartScreen()));
                              },
                              child: Icon(Icons.shopping_cart),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 10,
                      child: Container(
                        height: 120,
                        width: 420,
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 10,
                          top: 10.0,
                          right: 10.0,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        child: Row(
                          children: [
                            Material(
                              elevation: 1,
                              child: Container(
                                width: 325,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Get.to(const ShopPetScreen());
                                            },
                                            child: Image.asset(
                                              "assets/images/shop.png",
                                              width: 40,
                                            ),
                                          ),
                                          Text(
                                            'Shop',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(const AdoptPetScreen());
                                          },
                                          child: Image.asset(
                                            "assets/images/adoption.png",
                                            width: 40,
                                          ),
                                        ),
                                        Text(
                                          'Adoption',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(const ListVeterinarian());
                                          },
                                          child: Image.asset(
                                            "assets/images/image12.png",
                                            width: 40,
                                          ),
                                        ),
                                        Text(
                                          'Veterinarian',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // InkWell(
                                        //   onTap: () {
                                        //     Get.to(const AdoptPetScreen());
                                        //   },
                                        //   child:
                                        Image.asset(
                                          "assets/images/image13.png",
                                          width: 40,
                                        ),
                                        Text(
                                          'Treatment',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      TextUtils().normal14("Insight For\nYou",
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        width: 180,
                      ),
                      TextUtils().normal14("See\nmore"),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Image _ Banner 1.png",
                          width: 290,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Image.asset(
                          "assets/images/Image _ Banner 1.png",
                          width: 290,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Image.asset(
                          "assets/images/Image _ Banner 1.png",
                          width: 290,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Image.asset(
                          "assets/images/Image _ Banner 1.png",
                          width: 290,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils().normal16("Latest Adoptions",
                          fontWeight: FontWeight.bold),
                      const Spacer(),
                      TextUtils().normal16(
                        "See more",
                      ),
                      Container(
                        width: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const ShopPetScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/homescreen2.png',
                                width: 150,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal16("Maya",
                                    fontWeight: FontWeight.bold),
                                const Icon(Icons.favorite_border),
                              ],
                            ),
                            TextUtils().normal12("0.7 years "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal12("Female"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ShopPetScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/homescreen3.png',
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal16("Maya",
                                    fontWeight: FontWeight.bold),
                                const Icon(Icons.favorite_border),
                              ],
                            ),
                            TextUtils().normal12("0.5 Years "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal12("Male"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ShopPetScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/homescreen2.png',
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal16("Maya",
                                    fontWeight: FontWeight.bold),
                                const Icon(Icons.favorite_border),
                              ],
                            ),
                            TextUtils().normal12("0.7 Years "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal12(" Male"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ShopPetScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/homescreen3.png',
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal16("Maya",
                                    fontWeight: FontWeight.bold),
                                const Icon(Icons.favorite_border),
                              ],
                            ),
                            TextUtils().normal12("0.7 Years "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal12("Male"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ShopPetScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/homescreen2.png',
                                width: 160,
                              ),
                            ),
                            Container(
                              width: 50.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal16("Maya",
                                    fontWeight: FontWeight.bold),
                                const Icon(Icons.favorite_border),
                              ],
                            ),
                            TextUtils().normal12("0.7 Years "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils().normal12("Male"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
