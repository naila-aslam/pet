import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petlover/screens/messagescreen.dart';
import 'package:petlover/screens/petdetailscreen.dart';
import 'package:petlover/utils/text_utils.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
            Get.to((PetDetailScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtils().normal20("Messages", fontWeight: FontWeight.bold),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                  prefixIcon: Icon(Icons.search),
                  hintText: (" Search Messages"),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              for (int i = 0; i < 12; i++) Message(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Message() {
    return Column(
      children: [
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(5.0),
            child: Material(
              child: ListTile(
                onTap: () {
                  Get.to(() => const MessageScreen());
                },
                leading: Container(
                  child: Image.asset(
                    'assets/images/profile12.png',
                    width: 60,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr Jaxson Calzoni',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextUtils().normal14("11:00", color: Colors.black),
                  ],
                ),
                subtitle: Text(
                  'Yes, I am now available, just bring your dog here',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(4.0),
            child: Material(
              child: ListTile(
                onTap: () {
                  Get.to(() => const MessageScreen());
                },
                leading: Container(
                  child: Image.asset('assets/images/chat1.png'),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miracle Geidt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextUtils().normal14("10:00", color: Colors.black),
                  ],
                ),
                subtitle: Text(
                  'What if we met today?',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
