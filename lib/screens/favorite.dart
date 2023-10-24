import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/utils/text_utils.dart';

class FavoriteCartScreen extends StatefulWidget {
  const FavoriteCartScreen({super.key});

  @override
  State<FavoriteCartScreen> createState() => _FavoriteCartScreenState();
}

class _FavoriteCartScreenState extends State<FavoriteCartScreen> {
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 5.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtils().normal20("Favorite", fontWeight: FontWeight.bold),
                TextUtils().normal12("2 items"),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/favorite.png",
                    height: 200,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Fresh Kisses",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100.0,
                          ),
                          Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                            size: 30.0,
                          ),
                        ],
                      ),
                      Text("Dog"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils()
                              .normal18("\$25", fontWeight: FontWeight.bold),
                          ElevatedButton(
                            onPressed: () {
                              Get.to((HomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: EdgeInsets.all(10.0),
                              backgroundColor: Colors.blue,
                              elevation: 1.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(Icons.shopping_basket,
                                    color: Colors
                                        .white), // Replace Icons.chat with the desired icon
                                SizedBox(
                                    width:
                                        20.0), // Optional spacing between icon and text
                                TextUtils().normal14(
                                  "Chart",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/prod.png",
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Carrot Fresh",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100.0,
                          ),
                          Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                            size: 30.0,
                          ),
                        ],
                      ),
                      Text("Food Rabit"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtils()
                              .normal18("\$25", fontWeight: FontWeight.bold),
                          ElevatedButton(
                            onPressed: () {
                              Get.to((HomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: EdgeInsets.all(10.0),
                              backgroundColor: Colors.blue,
                              elevation: 1.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(Icons.shopping_basket,
                                    color: Colors
                                        .white), // Replace Icons.chat with the desired icon
                                SizedBox(
                                    width:
                                        20.0), // Optional spacing between icon and text
                                TextUtils().normal14(
                                  "Chart",
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
