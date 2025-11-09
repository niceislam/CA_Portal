import 'package:flutter/material.dart';

class BottomTask extends StatelessWidget {
  const BottomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Task", style: TextStyle(fontSize: 25)))],
    );
  }
}
