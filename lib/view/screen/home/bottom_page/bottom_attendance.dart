import 'package:flutter/material.dart';

class BottomAttendance extends StatelessWidget {
  const BottomAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Attendance", style: TextStyle(fontSize: 25))),
      ],
    );
  }
}
