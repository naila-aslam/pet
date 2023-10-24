import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/profilescreen.dart';
import 'package:petlover/utils/text_utils.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(const ProfileScreen());
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtils().normal18("FAQ", fontWeight: FontWeight.bold),
            SizedBox(height: 40.0),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  FAQItem(
                    question: "What is a Pet Lover App?",
                    answer:
                        " Pet lovers application is an application intended for pet lovers. This application has shop, addoption, veterinarian, and treatment features.",
                  ),
                  SizedBox(height: 10.0),
                  FAQItem(
                    question: "Can I sell my pet?",
                    answer:
                        "No, the Pet Lover App does not support pet selling. It is focused on connecting pet lovers and facilitating adoption processes.",
                  ),
                  SizedBox(height: 10.0),
                  FAQItem(
                    question: "How is the adoption process?",
                    answer:
                        "The adoption process involves several steps, including application submission, pet selection, verification, and adoption agreement. It may vary based on the specific adoption center or organization.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({
    required this.question,
    required this.answer,
  });

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        constraints: BoxConstraints(
          minHeight: 70.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your content goes here
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextUtils().normal16(widget.question,
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Icon(isExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
                if (isExpanded)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        TextUtils()
                            .normal16(widget.answer, color: Colors.black87),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
