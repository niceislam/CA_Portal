import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, this.title, this.sentTime, this.body});
  final String? title;
  final String? sentTime;
  final String? body;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 3),
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Row(
                spacing: 3,
                children: [
                  Image.asset(
                    color: Colors.blue,
                    height: 15,
                    width: 15,
                    "assets/image/notification.png",
                  ),

                  Text(
                    "${sentTime ?? ""}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                "${title ?? ""}",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                ),
              ),
              Text(
                "${body ?? ""}",
                maxLines: 3,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
