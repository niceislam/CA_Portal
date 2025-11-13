import 'package:flutter/material.dart';

class AttendanceAppbar extends StatelessWidget {
  const AttendanceAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text(
        "Attendance Report",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
