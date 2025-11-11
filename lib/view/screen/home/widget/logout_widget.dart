import 'package:flutter/material.dart';

class CustomLogout extends StatelessWidget {
  const CustomLogout({
    super.key,
    this.asetImage,
    this.title,
    this.logoutOntap,
    this.cancelOntap,
  });
  final String? asetImage;
  final String? title;
  final VoidCallback? logoutOntap;
  final VoidCallback? cancelOntap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(height: 120, width: 120, "${asetImage}"),
        Text(
          "Logout",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "${title ?? ""}",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: logoutOntap,
          child: Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade400,
            ),
            child: Center(
              child: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: cancelOntap,
          child: Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.transparent,
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}