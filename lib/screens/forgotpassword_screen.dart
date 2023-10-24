import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/login_screen.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(LoginScreen());
            // Handle back button press
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
          width: MediaQuery.of(context).size.width / 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60.0,
              ),
              TextUtils().normal22("Forgot Password",
                  color: ColorUtils.blackcolor, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 20.0,
              ),
              TextUtils().normal18(
                "Email",
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  hintText: "input your emial",
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: ColorUtils.bluecolor,
                        padding: EdgeInsets.all(20.0)),
                    onPressed: () {},
                    child: TextUtils().normal16("Submit")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
