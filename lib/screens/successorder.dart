import 'package:flutter/material.dart';
import 'package:petlover/utils/text_utils.dart';

class SuccessOrderScreen extends StatefulWidget {
  const SuccessOrderScreen({super.key});

  @override
  State<SuccessOrderScreen> createState() => _SuccessOrderScreenState();
}

class _SuccessOrderScreenState extends State<SuccessOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding:
              EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                Image.asset("assets/images/success.png",
                    height: 250, width: 250),
                SizedBox(
                  height: 30.0,
                ),
                TextUtils().normal20("Thank you!", fontWeight: FontWeight.bold),
                SizedBox(
                  height: 10.0,
                ),
                TextUtils().normal16(
                  "Your purchase was successful",
                ),
                SizedBox(
                  height: 80,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.blue), // Set text color to blue
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue), // Set border color to blue
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "See my transaction",
                    hintStyle: TextStyle(
                        color: Colors.blue), // Set hint text color to blue
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
