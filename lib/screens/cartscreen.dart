import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/checkoutscreen.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/utils/text_utils.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils()
                        .normal20("My Cart", fontWeight: FontWeight.bold),
                    TextUtils().normal16("5 items"),
                    SizedBox(height: 10.0),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/product2.png",
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          TextUtils()
                              .normal16("Pet Bag", fontWeight: FontWeight.bold),
                          SizedBox(height: 4.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal14("Cat"),
                              TextUtils().normal18("\$70",
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 15.0),
                              Text("1"),
                              SizedBox(width: 15.0),
                              Icon(
                                Icons.remove_circle,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 120),
                              Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/cart2.png",
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          TextUtils().normal16("Carrot Fresh",
                              fontWeight: FontWeight.bold),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal14("Food Rabit"),
                              SizedBox(
                                width: 85,
                              ),
                              // TextUtils().normal16(
                              //   "\$15",
                              //   fontWeight: FontWeight.bold,
                              //   color: Colors.red,
                              //   decoration: TextDecoration.lineThrough,
                              // ),
                              Text(
                                "\$15",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),

                              SizedBox(
                                width: 25,
                              ),
                              TextUtils()
                                  .normal18("\$5", fontWeight: FontWeight.bold),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 15.0),
                              Text("1"),
                              SizedBox(width: 15.0),
                              Icon(
                                Icons.remove_circle,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 120),
                              Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/cart4.png",
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          TextUtils().normal16("Fresh Kisses",
                              fontWeight: FontWeight.bold),
                          SizedBox(height: 4.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtils().normal14("Dog"),
                              TextUtils().normal18("\$25",
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 15.0),
                              Text("1"),
                              SizedBox(width: 15.0),
                              Icon(
                                Icons.remove_circle,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 120),
                              Icon(
                                Icons.delete_outline_outlined,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                    // SizedBox(height: 100),
                    Divider(),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.only(right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Sub Total\n",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\$109",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Expanded(
                              //   // child: TextUtils().normal16("Sub Total\n\$109"),
                              SizedBox(width: 78),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Get.to(CheckOutScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35.0),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 20),
                                    backgroundColor: Colors.blue,
                                    elevation: 1.0,
                                  ),
                                  child: TextUtils().normal18('Checkout',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
