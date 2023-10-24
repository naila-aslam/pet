import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/login_screen.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:petlover/utils/text_utils.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              left: 10.0, right: 5.0, top: 5.0, bottom: 5.0),
          width: MediaQuery.of(context).size.width / 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60.0,
              ),
              TextUtils().normal22("Confrim Your Number",
                  color: ColorUtils.blackcolor, fontWeight: FontWeight.bold),
              const SizedBox(
                height: 4.0,
              ),
              TextUtils().normal12(
                  "we have to sent a 4digit Verfication Code +92 09887667875"),
              const SizedBox(
                height: 80.0,
              ),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 2.0,
                  color: Colors.blueGrey,
                )),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: Divider(
                  height: 10.0,
                  thickness: 2.0,
                  color: Colors.blueGrey,
                )),
                SizedBox(
                  width: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Expanded(
                          child: Divider(
                        thickness: 2.0,
                        color: Colors.blueGrey,
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  width: 2.0,
                ),
                Expanded(
                    child: Divider(
                  height: 10.0,
                  thickness: 2.0,
                  color: Colors.blueGrey,
                )),
                SizedBox(
                  width: 3.0,
                ),
                Expanded(
                    child: Divider(
                  height: 10.0,
                  thickness: 2.0,
                  color: Colors.blueGrey,
                )),
              ]),
              SizedBox(
                height: 70.0,
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
                  child: TextUtils().normal16("Register"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: TextUtils().normal16(
                  "Didn't receice the code? Resend it",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
