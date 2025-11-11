import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationIn extends StatelessWidget {
  const NotificationIn({super.key, this.sentTime, this.title, this.body});
  final String? sentTime;
  final String? title;
  final String? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F6FC),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(
                "${title ?? ""}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              Text(
                "${sentTime ?? ""}",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "${body ?? ""}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
