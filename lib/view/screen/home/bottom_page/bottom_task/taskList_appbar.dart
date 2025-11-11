import 'package:flutter/material.dart';

class TasklistAppbar extends StatelessWidget {
  const TasklistAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        "TASK LIST",
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
    );
  }
}
