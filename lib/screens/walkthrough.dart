import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/login_screen.dart';
import 'package:petlover/screens/register_screen.dart';
import 'package:petlover/screens/widgets/elevated.dart';
import 'package:petlover/utils/colors_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  List<Map<String, String>> onboardingData = [
    {
      "image": 'assets/images/walkthrough-2.png',
      "title": 'Find a new pet for you'
    },
    {
      "image": 'assets/images/walkthrough-3.png',
      "title": 'Find the best product \n for your beloved pet'
    },
    {
      "image": 'assets/images/walkthrough-1.png',
      "title": 'Find the nearest pet \n from your location'
    },
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        onboardingData[index]['image']!,
                        height: 260,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        onboardingData[index]['title']!,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      indicatorWidget(),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: ColorUtils.bluecolor,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20,
                  ),
                ),
                onPressed: () {
                  Get.to(RegisterScreen());
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            CustomElevatedButton(
              name: "Singup",
              OnTap: () {
                LoginScreen();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget indicatorWidget() {
    return SmoothPageIndicator(
      controller: pageController,
      count: onboardingData.length,
      effect: WormEffect(
          dotWidth: 11, dotHeight: 11, type: WormType.thin, spacing: 20),
    );
  }
}
