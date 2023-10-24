// import 'package:flutter/material.dart';
//
// import '../../utils/text_utils.dart';
//
// class PaymentBottomSheet extends StatefulWidget {
//   const PaymentBottomSheet({super.key});
//
//   @override
//   State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
// }
//
// class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
//   bool cod = false;
//   bool paypal = false;
//   bool gpay = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(
//           height: 20.0,
//         ),
//         TextUtils().normal22(
//           "Select Payment",
//           fontWeight: FontWeight.bold,
//           color: Colors.black,
//         ), // Set the text color to black
//         const SizedBox(
//           height: 20,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "Cash on Delivery",
//               style:
//                   TextStyle(color: Colors.black), // Set the text color to black
//             ),
//             Checkbox(
//                 value: cod,
//                 onChanged: (value) {
//                   cod = !cod;
//                   paypal = false;
//                   gpay = false;
//                   setState(() {});
//                 }),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "PayPal",
//               style:
//                   TextStyle(color: Colors.black), // Set the text color to black
//             ),
//             Checkbox(
//                 value: paypal,
//                 onChanged: (value) {
//                   paypal = !paypal;
//                   cod = !false;
//                   gpay = false;
//
//                   setState(() {});
//                 }),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text(
//               "G-Pay",
//               style:
//                   TextStyle(color: Colors.black), // Set the text color to black
//             ),
//             Checkbox(
//                 value: gpay,
//                 onChanged: (value) {
//                   gpay = !gpay;
//                   paypal = false;
//                   cod = false;
//                   setState(() {});
//                 }),
//           ],
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../utils/text_utils.dart';

class PaymentBottomSheet extends StatefulWidget {
  const PaymentBottomSheet({Key? key}) : super(key: key);

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  bool cod = false;
  bool paypal = false;
  bool gpay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        TextUtils().normal22(
          "Select Payment",
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Cash on Delivery",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Checkbox(
              shape: CircleBorder(),
              value: cod,
              onChanged: (value) {
                setState(() {
                  cod = !cod;
                  paypal = false;
                  gpay = false;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "PayPal",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Checkbox(
              shape: CircleBorder(),
              value: paypal,
              onChanged: (value) {
                setState(() {
                  paypal = !paypal;
                  cod = false;
                  gpay = false;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "G-Pay",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Checkbox(
              shape: CircleBorder(),
              value: gpay,
              onChanged: (value) {
                setState(() {
                  gpay = !gpay;
                  paypal = false;
                  cod = false;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
