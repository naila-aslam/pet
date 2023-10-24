// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:petlover/screens/cartscreen.dart';
// import 'package:petlover/screens/home_screen.dart';
// import 'package:petlover/screens/successorder.dart';
// import 'package:petlover/utils/text_utils.dart';
//
// import 'widgets/payment_bottom_sheet.dart';
//
// class CheckOutScreen extends StatefulWidget {
//   const CheckOutScreen({super.key});
//
//   @override
//   State<CheckOutScreen> createState() => _CheckOutScreenState();
// }
//
// class _CheckOutScreenState extends State<CheckOutScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         toolbarHeight: 90,
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         // Center align the title
//         title: const Text(
//           "Checkout",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         leading: Row(
//           children: [
//             IconButton(
//               icon: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               ),
//               onPressed: () {
//                 Get.to(const CartScreen());
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(
//                 left: 10.0,
//                 right: 10.0,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 20.0,
//                   ),
//                   TextUtils()
//                       .normal20("Delievery Type", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           Get.to((const HomeScreen()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           padding: const EdgeInsets.all(10.0),
//                           backgroundColor: Colors.white,
//                           elevation: 1.0,
//                         ),
//                         child: TextUtils()
//                             .normal16("Pick Up", color: Colors.black),
//                       ),
//                       const SizedBox(
//                         width: 20.0,
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           Get.to((const HomeScreen()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           padding: const EdgeInsets.all(10.0),
//                           backgroundColor: Colors.blue,
//                           elevation: 1.0,
//                         ),
//                         child: const Text(" Ship "),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   TextUtils()
//                       .normal16("Deliery To", fontWeight: FontWeight.bold),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextUtils().normal16("California US 2000"),
//                       TextUtils().normal16(
//                         "Edit Address",
//                       ),
//                     ],
//                   ),
//                   TextUtils().normal16(
//                     "+99999-12345",
//                   ),
//                   const SizedBox(
//                     height: 12,
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 20.0,
//                   ),
//                   TextUtils()
//                       .normal16("Contact Info", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextUtils()
//                       .normal14("Jenny Fiesher", fontWeight: FontWeight.bold),
//                   TextUtils()
//                       .normal14("+9999-12324-45", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 20.0,
//                   ),
//                   TextUtils()
//                       .normal16("Payment Method", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   TextField(
//                     textAlign: TextAlign.start,
//                     decoration: InputDecoration(
//                       border: const OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                         borderRadius: BorderRadius.all(Radius.circular(300)),
//                       ),
//                       hintStyle: const TextStyle(
//                           color: Colors.black), // Set hint text color to black
//                       hintText: "Paypal",
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.chevron_right),
//                         color: Colors.black, // Set the icon color to black
//                         onPressed: () {
//                           showPaymentBottomSheet();
//                         },
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20.0,
//                   ),
//                   TextUtils()
//                       .normal16("Your Items", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 5.0,
//                   ),
//                   ListTile(
//                     leading: Image.asset(
//                       "assets/images/prod.png",
//                     ),
//                     title: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Carrot Fresh",
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                             TextUtils()
//                                 .normal20("\$5", fontWeight: FontWeight.bold),
//                           ],
//                         ),
//                         const Text("Food Rabit"),
//                         const SizedBox(
//                           height: 10.0,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextUtils()
//                       .normal16("Promo Code", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       const Expanded(
//                         child: TextField(
//                           textAlign: TextAlign.start,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.blue),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5)),
//                             ),
//                             hintText: "Enter a promo Code",
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 15),
//                       Expanded(
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             padding: const EdgeInsets.all(20.0),
//                             backgroundColor: Colors.blue,
//                             elevation: 1.0,
//                           ),
//                           child: const Text("check"),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   TextUtils()
//                       .normal16("Order Summary", fontWeight: FontWeight.bold),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextUtils().normal16("Sub Total"),
//                       TextUtils().normal16("\$10"),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextUtils().normal16("Delievery Free"),
//                       TextUtils().normal16(" Free", color: Colors.green),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 5.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextUtils().normal16("Tax"),
//                       TextUtils().normal16(" \$0"),
//                     ],
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 80.0,
//                   ),
//                   const Divider(),
//                   Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           // Align the children at the start and end of the row
//                           children: [
//                             TextUtils().normal16("Sub Total"),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Get.to(const SuccessOrderScreen());
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(40.0),
//                                 ),
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 20.0,
//                                     horizontal:
//                                         60.0), // Adjust padding as needed
//                                 backgroundColor: Colors.blue,
//                                 elevation: 1.0,
//                               ),
//                               child: const Text("check"),
//                             ),
//                           ],
//                         ),
//                         TextUtils().normal16("\$109", color: Colors.blueAccent),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void showPaymentBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20.0),
//           topRight: Radius.circular(20.0),
//         ),
//       ),
//       builder: (BuildContext context) {
//         return GestureDetector(
//           onTap: () {
//             Navigator.of(context).pop();
//           },
//           child: Container(
//             padding: const EdgeInsets.only(
//               top: 10.0,
//               bottom: 10.0,
//               right: 10.0,
//               left: 10.0,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(30.0),
//                 topRight: Radius.circular(30.0),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 PaymentBottomSheet(),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/screens/productdetailscreen.dart';
import 'package:petlover/screens/successorder.dart';
import 'package:petlover/utils/text_utils.dart';

import 'widgets/payment_bottom_sheet.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        centerTitle: true,
        // Center align the title
        title: const Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(const ProductDetailScreen());
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  TextUtils()
                      .normal20("Delievery Type", fontWeight: FontWeight.bold),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to((const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          backgroundColor: Colors.white,
                          elevation: 1.0,
                        ),
                        child: TextUtils()
                            .normal16("Pick Up", color: Colors.black),
                      ),
                      const SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          Get.to((const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          backgroundColor: Colors.blue,
                          elevation: 1.0,
                        ),
                        child: const Text(" Ship "),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  TextUtils()
                      .normal16("Deliery To", fontWeight: FontWeight.bold),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal16("California US 2000"),
                      TextUtils().normal16("Edit Address"),
                    ],
                  ),
                  TextUtils().normal16("+99999-12345"),
                  const Divider(),
                  const SizedBox(height: 20.0),
                  TextUtils()
                      .normal16("Contact Info", fontWeight: FontWeight.bold),
                  const SizedBox(height: 20),
                  TextUtils()
                      .normal14("Jenny Fiesher", fontWeight: FontWeight.bold),
                  TextUtils()
                      .normal14("+9999-12324-45", fontWeight: FontWeight.bold),
                  const Divider(),
                  const SizedBox(height: 20.0),
                  TextUtils()
                      .normal16("Payment Method", fontWeight: FontWeight.bold),
                  const SizedBox(height: 10.0),
                  TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(300)),
                      ),
                      hintStyle: const TextStyle(
                          color: Colors.black), // Set hint text color to black
                      hintText: "Paypal",
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.chevron_right),
                        color: Colors.black, // Set the icon color to black
                        onPressed: () {
                          showPaymentBottomSheet();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextUtils()
                      .normal16("Your Items", fontWeight: FontWeight.bold),
                  const SizedBox(height: 5.0),
                  ListTile(
                    leading: Image.asset("assets/images/prod.png"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Carrot Fresh",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            TextUtils()
                                .normal20("\$5", fontWeight: FontWeight.bold),
                          ],
                        ),
                        const Text("Food Rabit"),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  TextUtils()
                      .normal16("Promo Code", fontWeight: FontWeight.bold),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            hintText: "Enter a promo Code",
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.all(20.0),
                            backgroundColor: Colors.blue,
                            elevation: 1.0,
                          ),
                          child: const Text("check"),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 10.0),
                  TextUtils()
                      .normal16("Order Summary", fontWeight: FontWeight.bold),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal16("Sub Total"),
                      TextUtils().normal16("\$10"),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal16("Delievery Free"),
                      TextUtils().normal16(" Free", color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal16("Tax"),
                      TextUtils().normal16(" \$0"),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 80.0),
                  const Divider(),
                  Container(
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
                                  Get.to(SuccessOrderScreen());
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
                                child: TextUtils()
                                    .normal18('Checkout', color: Colors.white),
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
          ],
        ),
      ),
    );
  }

  void showPaymentBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              right: 10.0,
              left: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PaymentBottomSheet(),
              ],
            ),
          ),
        );
      },
    );
  }
}
