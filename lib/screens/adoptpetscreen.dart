import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/adoptpetdetail.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class AdoptPetScreen extends StatefulWidget {
  const AdoptPetScreen({super.key});

  @override
  State<AdoptPetScreen> createState() => _AdoptPetScreenState();
}

class _AdoptPetScreenState extends State<AdoptPetScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset(
                'assets/images/menu.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        'Filters',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Clear All',
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Sort"),
                      Spacer(),
                      TextUtils().normal14("Best Match"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Type Pet"),
                      Spacer(),
                      TextUtils().normal14("Dog"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Species"),
                      Spacer(),
                      TextUtils().normal14("All"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Age"),
                      Spacer(),
                      TextUtils().normal14("0-1"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Size (Weight)"),
                      Spacer(),
                      TextUtils().normal14("4-7 Kg"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextUtils().normal14("Location"),
                      Spacer(),
                      TextUtils().normal14("California"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: ColorUtils.bluecolor,
                          padding: EdgeInsets.symmetric(
                              vertical: 18.0,
                              horizontal:
                                  30.0), // Decrease the vertical padding
                        ),
                        onPressed: () {
                          Get.to((AdoptPetScreen()));
                        },
                        child: TextUtils().normal16("Apply Filter"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adopt",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Find the best Pet",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 10),
                        TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 9, horizontal: 15),
                            hintText: ("Dog"),
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                padding: EdgeInsets.all(10.0),
                                elevation: 0,
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Get.to(AdoptPetScreen());

                                // Button 1 pressed
                              },
                              child: Text(
                                'All',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Get.to(PetDetailScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.black38),
                                ),
                                padding: EdgeInsets.all(10.0),
                                backgroundColor: Colors.white,
                                elevation: 0,
                              ),
                              child: TextUtils()
                                  .normal12('Cat', color: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Get.to(PetDetailScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.black38),
                                ),
                                padding: EdgeInsets.all(10.0),
                                backgroundColor: Colors.white,
                                elevation: 0,
                              ),
                              child: TextUtils()
                                  .normal12('Dog', color: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.to(HomeScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.black38),
                                ),
                                padding: EdgeInsets.all(10.0),
                                backgroundColor: Colors.white,
                                elevation: 0,
                              ),
                              child: TextUtils()
                                  .normal12('Turtal', color: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Get.to(PetDetailScreen());
                                // Button 2 pressed
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.black38),
                                ),
                                padding: EdgeInsets.all(10.0),
                                backgroundColor: Colors.white,
                                elevation: 0,
                              ),
                              child: TextUtils()
                                  .normal12('Bird', color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal16("Nearest Places",
                                fontWeight: FontWeight.bold),
                            TextUtils().normal16("See more"),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/adopt1.png',
                                              width: 160,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/adopt2.png',
                                              width: 160,
                                            ),
                                          ),
                                          Container(
                                            width: 50.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen3.png',
                                              width: 160,
                                            ),
                                          ),
                                          Container(
                                            width: 50.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("0.7 years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal12(" Male"),
                                              TextUtils().normal12("40"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils()
                                .normal16("Dog", fontWeight: FontWeight.bold),
                            TextUtils().normal16("See more"),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/adopt3.png',
                                              width: 160,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/adopt4.png',
                                              width: 160,
                                            ),
                                          ),
                                          Container(
                                            width: 50.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen3.png',
                                              width: 160,
                                            ),
                                          ),
                                          Container(
                                            width: 50.0,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1.5 Years "),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      Get.to(const AdoptPetDetail());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      height: 200,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils().normal16("Maya",
                                                  fontWeight: FontWeight.bold),
                                              const Icon(Icons.favorite_border),
                                            ],
                                          ),
                                          TextUtils().normal12("1 Years "),
                                          Row(
                                            children: [
                                              TextUtils().normal12(" Male"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
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
      ),
    );
  }
}
