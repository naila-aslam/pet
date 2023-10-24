import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/appointment.dart';
import 'package:petlover/screens/successschedule.dart';
import 'package:petlover/screens/widgets/payment_bottom_sheet.dart';
import 'package:petlover/utils/text_utils.dart';

class AppointmentSummary extends StatefulWidget {
  const AppointmentSummary({super.key});

  @override
  State<AppointmentSummary> createState() => _AppointmentSummaryState();
}

class _AppointmentSummaryState extends State<AppointmentSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        // Center align the title
        title: const Text(
          "Appointment Summary",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
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
                Get.to(const AppointmentScreen());
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextUtils().normal16("Information Veterinarian",
                      fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/imageprofile.png",
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Jaxson Calzoni",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextUtils().normal12(
                              "No appointment",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtils().normal12("One Clinic Shop"),
                            TextUtils()
                                .normal16("AP021", fontWeight: FontWeight.bold)
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextUtils()
                      .normal16("Order Detail", fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal14("Consulation"),
                      TextUtils().normal14("\$10"),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils().normal14("Application Fee"),
                      TextUtils().normal14(
                        "\$0.5",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtils()
                          .normal16("Total", fontWeight: FontWeight.bold),
                      TextUtils()
                          .normal16(" \$10.5", fontWeight: FontWeight.bold),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextUtils().normal16("Contact Customer",
                      fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10,
                  ),
                  TextUtils()
                      .normal14("Amel Jane", fontWeight: FontWeight.bold),
                  TextUtils()
                      .normal14("+9999-12324-45", fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextUtils()
                      .normal16("Payment Method", fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  SizedBox(
                    height: 8,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Divider(),
                  Container(
                    padding: EdgeInsets.only(right: 8, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Sub Total\n",
                                    style: TextStyle(
                                      fontSize: 16,
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
                            SizedBox(
                              width: 60,
                            ),
                            // Expanded(
                            //   // child: TextUtils().normal16("Sub Total\n\$109"),

                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(SuccessSchedule());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 14.0, horizontal: 8),
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

//   void showPaymentBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Container(
//             padding: const EdgeInsets.only(
//                 top: 10.0, bottom: 10.0, right: 10.0, left: 10.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Material(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pop();
//                     },
//                     child: PaymentBottomSheet(),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }
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
