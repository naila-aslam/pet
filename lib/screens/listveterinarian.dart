import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/home_screen.dart';
import 'package:petlover/screens/veterinarianprofile.dart';
import 'package:petlover/utils/text_utils.dart';

class ListVeterinarian extends StatefulWidget {
  const ListVeterinarian({super.key});

  @override
  State<ListVeterinarian> createState() => _ListVeterinarianState();
}

class _ListVeterinarianState extends State<ListVeterinarian> {
  @override
  Widget build(BuildContext context) {
//     return Scaffold(
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             Expanded(
// //               child: Container(
// //                 height: MediaQuery.of(context).size.height,
// //                 child: Stack(
// //                   children: [
// //                     Image.asset(
// //                       "assets/images/homepage1.png",
// //                     ),
// //                     Positioned(
// //                       top: 30,
// //                       left: 10,
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Row(
// //                             children: [
// //                               IconButton(
// //                                 icon: Icon(Icons.arrow_back),
// //                                 color: Colors.black,
// //                                 onPressed: () {
// //                                   Get.to(HomeScreen());
// //                                 },
// //                               ),
// //                             ],
// //                           ),
// //                           Padding(
// //                             padding: const EdgeInsets.only(left: 8.0),
// //                             child: TextUtils().normal20("Veterinarian",
// //                                 fontWeight: FontWeight.bold),
// //                           ),
// //                           Positioned(
// //                             top: 120,
// //                             left: 10,
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 SizedBox(
// //                                   width: 2,
// //                                 ),
//                                 Image.asset(
//                                   "assets/images/banner.png",
//                                   width: 330,
//                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: Stack(
//                 children: [
//                   Image.asset(
//                     "assets/images/homepage1.png",
//                   ),
//                   Positioned(
//                     top: 30,
//                     left: 10,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.arrow_back),
//                               color: Colors.black,
//                               onPressed: () {
//                                 Get.to(HomeScreen());
//                               },
//                             ),
//                           ],
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: TextUtils().normal20(
//                             "Veterinarian",
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 120,
//                     left: 10,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           width: 2,
//                         ),
//                         Image.asset(
//                           "assets/images/banner.png",
//                           width: 330,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 220,
//               left: 10,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         TextUtils().normal16("Nearest Veterinarian",
//                             fontWeight: FontWeight.bold),
//                         SizedBox(
//                           width: 90,
//                         ),
//                         TextUtils().normal16(
//                           "See more",
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     ),
//                     for (int i = 0; i < 5; i++) Message(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget Message() {
//   return Column(
//     children: [
//       Material(
//         elevation: 1,
//         borderRadius: BorderRadius.circular(10.0),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           padding: const EdgeInsets.all(5.0),
//           child: Material(
//             child: ListTile(
//               onTap: () {
//                 Get.to(() => const MessageScreen());
//               },
//               leading: Container(
//                 child: Image.asset(
//                   'assets/images/profile12.png',
//                   width: 60,
//                 ),
//               ),
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Dr Jaxson Calzoni',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextUtils().normal14("11:00", color: Colors.black),
//                 ],
//               ),
//               subtitle: Text(
//                 'Yes, I am now available, just bring your dog here',
//                 style: TextStyle(color: Colors.black, fontSize: 13),
//               ),
//             ),
//           ),
//         ),
//       ),
//       const SizedBox(
//         height: 10.0,
//       ),
//       Material(
//         elevation: 1,
//         borderRadius: BorderRadius.circular(10.0),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           padding: const EdgeInsets.all(4.0),
//           child: Material(
//             child: ListTile(
//               onTap: () {
//                 Get.to(() => const MessageScreen());
//               },
//               leading: Container(
//                 child: Image.asset('assets/images/chat1.png'),
//               ),
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Miracle Geidt',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextUtils().normal14("10:00", color: Colors.black),
//                 ],
//               ),
//               subtitle: Text(
//                 'What if we met today?',
//                 style: TextStyle(color: Colors.black, fontSize: 13),
//               ),
//             ),
//           ),
//         ),
//       ),
//       SizedBox(
//         height: 15,
//       ),
//     ],
//   );
// // }
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 color: Colors.blue,
//                 height: MediaQuery.of(context).size.height / 2,
//                 width: MediaQuery.of(context).size.width,
//                 child: Stack(
//                   children: [
//                     Image.asset(
//                       "assets/images/homepage1.png",
//                     ),
//                     Positioned(
//                       top: 50,
//                       left: 10,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               IconButton(
//                                 icon: Icon(Icons.arrow_back),
//                                 color: Colors.black,
//                                 onPressed: () {
//                                   Get.to(HomeScreen());
//                                 },
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8.0),
//                             child: TextUtils().normal20("Veterinarian",
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       top: 160,
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             "assets/images/banner.png",
//                             width: 350,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               color: Colors.purple,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 30.0, left: 10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 90,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextUtils().normal14("Vetereiaian",
//                             fontWeight: FontWeight.bold),
//                         TextUtils().normal14("Seemore"),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height / 2.3,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/homepage1.png",
                        width: 600,
                      ),
                      Positioned(
                        top: 30,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  color: Colors.black,
                                  onPressed: () {
                                    Get.to(HomeScreen());
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextUtils().normal20("Veterinarian",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/banner.png",
                                width: 330,
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
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal18("Nearest Veterinarian",
                                fontWeight: FontWeight.bold),
                            TextUtils().normal14("See more"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        for (int i = 0; i < 6; i++) message(i),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget message(int i) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Get.to((VeterinarianProfile()));
          },
          child: ListTile(
            leading: Container(
              // height: MediaQuery
              //     .of(context)
              //     .size
              //     .height,
              child: Image.asset('assets/images/doctor.png'),
            ),
            title: const Text(
              "Dr Jaydon Verovs",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Vet Meidca",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Text("0.5km"),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            Get.to((VeterinarianProfile()));
          },
          child: ListTile(
            leading: Container(
              // height: MediaQuery
              //     .of(context)
              //     .size
              //     .height,
              child: Image.asset('assets/images/doctor2.png'),
            ),
            title: const Text(
              "Dr Jaxson Calzoni",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "One Stop Clinic",
              style: TextStyle(fontSize: 14),
            ),
            trailing: Text("0.55km"),
          ),
        ),
      ],
    ),
  );
}
