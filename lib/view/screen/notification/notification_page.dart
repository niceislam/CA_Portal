import 'package:ca_portal_2/database/notification_database.dart';
import 'package:ca_portal_2/view/screen/notification/notification_in.dart';
import 'package:ca_portal_2/view/screen/notification/widget/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: NotificationData().Data.length,
                itemBuilder: (context, index) {
                  final item = NotificationData().Data[index];
                  return InkWell(
                    onTap: () {
                      Get.to(
                        () => NotificationIn(
                          sentTime: item['sentAt'],
                          title: item['title'],
                          body: item['body'],
                        ),
                      );
                    },
                    child: NotificationCard(
                      title: item['title'],
                      sentTime: item['sentAt'],
                      body: item['body'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
