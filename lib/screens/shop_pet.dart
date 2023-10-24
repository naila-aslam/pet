import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/screens/petdetailscreen.dart';
import 'package:petlover/screens/productdetailscreen.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class ShopPetScreen extends StatefulWidget {
  const ShopPetScreen({Key? key}) : super(key: key);

  @override
  State<ShopPetScreen> createState() => _ShopPetScreenState();
}

class _ShopPetScreenState extends State<ShopPetScreen> {
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
                  padding: const EdgeInsets.only(left: 8.0, right: 6.0),
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
                          Get.to((HomeScreen()));
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
      body: DefaultTabController(
        length: 2, // Number of tabs
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Find the best product or pet",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                TabBar(
                  labelColor: Colors.black,
                  // Configure the tab bar
                  tabs: [
                    Tab(
                      text: 'PRODUCT',
                    ),
                    Tab(
                      text: 'PET',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Contents of Tab 1
                      Center(
                        child: tab2Content(),
                      ),

                      Center(
                        child: tab1Content(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tab1Content() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14),
            TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                hintText: ("2 year old dog"),
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
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Get.to(PetDetailScreen());

                    // Button 1 pressed
                  },
                  child: Text(
                    'All',
                    style: TextStyle(
                        color: Colors.white), // Set the text color to white
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PetDetailScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(10.0),
                    side: BorderSide(color: Colors.black38),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: TextUtils().normal12('Cat', color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PetDetailScreen());
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
                  child: TextUtils().normal12('Dog', color: Colors.black),
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
                  child: TextUtils().normal12('Turtal', color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PetDetailScreen());
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
                  child: TextUtils().normal12('Bird', color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextUtils().normal14("200 Pet Available"),
            Container(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PetDetailScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/pet12.png',
                          width: 160,
                        ),
                        // TextUtils().normal16("Maya", fontWeight: FontWeight.bold),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils()
                                .normal16("Maya", fontWeight: FontWeight.bold),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        TextUtils().normal14("0.7 years "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal14(" Male"),
                            TextUtils()
                                .normal14("\$40", fontWeight: FontWeight.bold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(PetDetailScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/pet1.png',
                          width: 160,
                        ),
                        Container(
                          width: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils()
                                .normal16("Maya", fontWeight: FontWeight.bold),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        TextUtils().normal12("0.7 years "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal12("Male"),
                            TextUtils()
                                .normal14("\$40", fontWeight: FontWeight.bold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PetDetailScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/pet3.png',
                          width: 150,
                        ),
                        // TextUtils().normal16("Maya", fontWeight: FontWeight.bold),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils()
                                .normal16("Maya", fontWeight: FontWeight.bold),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        TextUtils().normal12("0.7 years "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal12(" Male"),
                            TextUtils()
                                .normal14("\$40", fontWeight: FontWeight.bold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {
                    Get.to(PetDetailScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/pet4.png',
                          width: 150,
                        ),
                        // TextUtils().normal16("Maya", fontWeight: FontWeight.bold),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils()
                                .normal16("Maya", fontWeight: FontWeight.bold),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        TextUtils().normal12("0.7 years "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal12(" Male"),
                            TextUtils()
                                .normal14("\$40", fontWeight: FontWeight.bold),
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
    );
  }

  Widget tab2Content() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 10),
          TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              hintText: ("Food for rabbit"),
              contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
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
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Get.to(PetDetailScreen());

                  // Button 1 pressed
                },
                child: Text(
                  'All',
                  style: TextStyle(
                      color: Colors.white), // Set the text color to white
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(ProductDetailScreen());
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
                child: TextUtils().normal12('Glasses', color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(ProductDetailScreen());
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
                child: TextUtils().normal12('Bag', color: Colors.black),
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
                child: TextUtils().normal12('Food', color: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(ProductDetailScreen());
                  // Button 2 pressed
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black38),
                  ),
                  padding: EdgeInsets.all(10.0),
                  backgroundColor: Colors.white,
                ),
                child: TextUtils().normal12('Vitamin', color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(ProductDetailScreen());
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  height: 210,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/product1.png',
                        width: 160,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal16("Cute glasses",
                              fontWeight: FontWeight.bold),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal12("Dog"),
                          TextUtils()
                              .normal14("\$10", fontWeight: FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 20.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(ProductDetailScreen());
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  height: 210,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/product2.png',
                        width: 160,
                      ),
                      Container(
                        width: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils()
                              .normal16("Pet bag", fontWeight: FontWeight.bold),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal12("Cat"),
                          TextUtils()
                              .normal14("\$79", fontWeight: FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(ProductDetailScreen());
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  height: 210,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/prod.png',
                        width: 150,
                      ),
                      // TextUtils().normal16("Maya", fontWeight: FontWeight.bold),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal16("Carrot Fresh",
                              fontWeight: FontWeight.bold),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal12("Rabbit"),
                          TextUtils()
                              .normal14("\$5", fontWeight: FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 20.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(ProductDetailScreen());
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  height: 210,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/product4.png',
                        width: 160,
                      ),
                      // TextUtils().normal16("Maya", fontWeight: FontWeight.bold),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal16("Fresh Kisses",
                              fontWeight: FontWeight.bold),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils().normal12("Dog"),
                          TextUtils()
                              .normal14("\$25", fontWeight: FontWeight.bold),
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
    );
  }
}
